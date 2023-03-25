from ctypes import *
import numpy as np
import math

import mmap

from .evn     import evn
from .acq     import acq
from .osc_trg import osc_trg
from .osc_fil import osc_fil
from .uio     import uio


class osc(evn, acq, osc_trg, osc_fil, uio):
    #: sampling frequency
    FS = 125000000.0
    #: register width - linear addition multiplication
    DW = 16
    # fixed point range
    _DWr  = (1 << (DW-1)) - 1
    # buffer parameters
    buffer_size = 2**14  #: buffer size
    CW = 31  #: counter size
    _CWr = 2**CW

    #: analog stage range voltages
    ranges = (1.0, 20.0)

    class _regset_t(Structure):
        _fields_ = [('evn', evn._regset_t),
                    ('rsv_000', c_uint32),
                    ('acq', acq._regset_t),  # pre/post trigger counters
                    # edge detection
                    ('trg', osc_trg._regset_t),
                    ('rsv_001', c_uint32),
                    # filter
                    ('fil', osc_fil._regset_t)]

    class _buffer_t(Array):
        _length_ = 2**14
        _type_   = c_int16

    def __init__(self, index: int, input_range: float, uio: str = '/dev/uio/osc'):
        """Module instance index should be provided"""

        # use index
        uio = uio+str(index)

        # call parent class init to open UIO device and map regset
        super().__init__(uio)

        # map regset
        self.regset = self._regset_t.from_buffer(self.uio_mmaps[0])
        # map buffer
        self.buffer = self._buffer_t.from_buffer(self.uio_mmaps[1])

        # set input range (there is no default)
        self.input_range = input_range

    def __del__(self):
        # call parent class init to unmap maps and close UIO device
        super().__del__()

    def default(self):
        """Set registers into default (power-up) state."""
        evn.default(self)
        acq.default(self)
        osc_trg.default(self)
        osc_fil.default(self)
        self.input_range = self.input_range

    def show_regset(self):
        """Print FPGA module register set for debugging purposes."""
        evn.show_regset(self)
        acq.show_regset(self)
        osc_trg.show_regset(self)
        osc_fil.show_regset(self)

    @property
    def input_range(self) -> float:
        """Input range can be one of the supporte ranges.

        See HW board documentation for details.
        """
        return self.__input_range

    @input_range.setter
    def input_range(self, value: float):
        if value in self.ranges:
            self.__input_range = value
            self.filter_coeficients = self._filters[value]
        else:
            raise ValueError("Input range can be one of {} volts.".format(self.ranges))

    @property
    def sample_rate(self) -> float:
        """Sample rate depending on decimation factor."""
        return (self.FS / self.decimation)

    @property
    def sample_period(self) -> float:
        """Sample period depending on decimation factor."""
        return (1 / self.sample_rate)

    @property
    def pointer(self):
        # mask out overflow bit and sum pre and post trigger counters
        cnt = self.trigger_pre_status + self.trigger_post_status
        adr = cnt % self.buffer_size
        return adr

    def data(self, siz: int = buffer_size, ptr: int = None) -> np.array:
        """Data.

        Parameters
        ----------
        siz : int, optional
            Number of data samples to be read from the FPGA buffer.
        ptr : int, optional
            End of data pointer, only use if you understand
            the source code.

        Returns
        -------
        array
            Array containing float samples scaled
            to the selected analog range.
            The data is alligned at the end to the last sample
            stored into the buffer.
        """
        if ptr is None:
            ptr = int(self.pointer)
        adr = (self.buffer_size + ptr - siz) % self.buffer_size
        scale = self.__input_range / float(self._DWr)
        # TODO: avoid making copy of entire array
        wave = np.roll(self.buffer, -ptr)
        return (wave.astype('float32')[-siz:] * scale)
