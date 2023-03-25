from ctypes import *
import numpy as np
import math

import mmap

from .evn     import evn
from .acq     import acq
from .la_trg  import la_trg
from .la_rle  import la_rle
from .la_msk  import la_msk
from .uio     import uio


class la(evn, acq, la_trg, la_rle, la_msk, uio):
    #: sampling frequency
    FS = 125000000.0
    #: register width - linear addition multiplication
    DW = 16
    # fixed point range
    _DWr = (1 << (DW-1)) - 1
    # buffer parameters
    buffer_size = 2**14  #: buffer size
    CW = 31  #: counter size
    _CWr = 2**CW

    class _regset_t (Structure):
        _fields_ = [('evn', evn._regset_t),
                    ('rsv_000', c_uint32),
                    ('acq', acq._regset_t),     # pre/post trigger counters
                    ('trg', la_trg._regset_t),  # trigger (value, edge) detection
                    ('rle', la_rle._regset_t),  # RLE
                    ('rsv_001', c_uint32),
                    ('msk', la_msk._regset_t)]  # mask/polarity

    class _buffer_t(Array):
        _length_ = 2**14
        _type_   = c_int16

    def __init__(self, uio: str = '/dev/uio/la'):
        # call parent class init to open UIO device and map regset
        super().__init__(uio)

        # map regset
        self.regset = self._regset_t.from_buffer(self.uio_mmaps[0])
        # map buffer
        self.buffer = self._buffer_t.from_buffer(self.uio_mmaps[1])

    def __del__(self):
        # call parent class init to unmap maps and close UIO device
        super().__del__()

    def default(self):
        """Set registers into default (power-up) state."""
        evn.default(self)
        acq.default(self)
        la_trg.default(self)
        la_rle.default(self)
        la_msk.default(self)

    def show_regset(self):
        """Print FPGA module register set for debugging purposes."""
        evn.show_regset(self)
        acq.show_regset(self)
        la_trg.show_regset(self)
        la_rle.show_regset(self)
        la_msk.show_regset(self)

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
            Array containing binary samples.
            The data is alligned at the end to the last sample
            stored into the buffer.
        """
        if ptr is None:
            ptr = int(self.pointer)
        adr = (self.buffer_size + ptr - siz) % self.buffer_size
        # TODO: avoid making copy of entire array
        wave = np.roll(self.buffer, -ptr)
        return wave.astype('uint16')[-siz:]
