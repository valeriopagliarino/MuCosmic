from ctypes import *


class asg_per(object):
    """
    Generator FPGA module driver.
    """

    # buffer parameters (fixed point number uM.F)
    CWM = 14  #: counter width - magnitude (fixed point integer)
    CWF = 16  #: counter width - fraction  (fixed point fraction)
    CW  = CWM + CWF
    # buffer counter ranges
    _CWMr = 2**CWM
    _CWFr = 2**CWF

    class _regset_t(Structure):
        _fields_ = [('cfg_siz', c_uint32),  # size
                    ('cfg_off', c_uint32),  # offset
                    ('cfg_ste', c_uint32)]  # step

    def default(self):
        """Set registers into default (power-up) state."""
        self.regset.per.cfg_siz = 0
        self.regset.per.cfg_ste = 0
        self.regset.per.cfg_off = 0

    def show_regset(self):
        """Print FPGA module register set for debugging purposes."""
        print(
            "cfg_siz = 0x{reg:08x} = {reg:10d}  # waveform size  \n".format(reg=self.regset.per.cfg_siz) +
            "cfg_off = 0x{reg:08x} = {reg:10d}  # waveform offset\n".format(reg=self.regset.per.cfg_off) +
            "cfg_ste = 0x{reg:08x} = {reg:10d}  # waveform step  \n".format(reg=self.regset.per.cfg_ste)
        )

    @property
    def waveform_size(self) -> int:
        """Waveform size."""
        return ((self.regset.per.cfg_siz + 1) >> self.CWF)

    @waveform_size.setter
    def waveform_size(self, value: int):
        if (0 < value <= self.buffer_size):
            self.regset.per.cfg_siz = (value << self.CWF) - 1
        else:
            raise ValueError("Waveform size should in range from 1 to buffer size. buffer_size = {}".format(self.buffer_size))

    @property
    def frequency(self) -> float:
        """Periodic signal frequency up to FS/2"""
        siz = self.regset.per.cfg_siz + 1
        ste = self.regset.per.cfg_ste + 1
        return (ste / siz * self.FS)

    @frequency.setter
    def frequency(self, value: float):
        if (value < self.FS/2):
            siz = self.regset.per.cfg_siz + 1
            self.regset.per.cfg_ste = int(siz * (value / self.FS)) - 1
        else:
            raise ValueError("Frequency should be less then half the sample rate. f < FS/2 = {} Hz".format(self.FS/2))

    @property
    def phase(self) -> float:
        """Periodic signal phase in angular degrees"""
        siz = self.regset.per.cfg_siz + 1
        off = self.regset.per.cfg_off
        return (off / siz * 360)

    @phase.setter
    def phase(self, value: float):
        siz = self.regset.per.cfg_siz + 1
        self.regset.per.cfg_off = int(siz * (value % 360) / 360)
