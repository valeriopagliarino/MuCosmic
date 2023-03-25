from ctypes import *


class la_msk(object):
    class _regset_t(Structure):
        _fields_ = [('cfg_msk', c_uint32),  # input mask
                    ('cfg_pol', c_uint32),  # input polarity
                    ('cfg_dec', c_uint32)]  # decimation factor

    def default(self):
        """Set registers into default (power-up) state."""
        self.regset.msk.cfg_msk = 0
        self.regset.msk.cfg_pol = 0
        self.regset.msk.cfg_dec = 0

    def show_regset(self):
        """Print FPGA module register set for debugging purposes."""
        print(
            "cfg_msk = 0x{reg:08x} = {reg:10d}  # input mask       \n".format(reg=self.regset.msk.cfg_msk) +
            "cfg_pol = 0x{reg:08x} = {reg:10d}  # input polarity   \n".format(reg=self.regset.msk.cfg_pol) +
            "cfg_dec = 0x{reg:08x} = {reg:10d}  # decimation factor\n".format(reg=self.regset.msk.cfg_dec)
        )

    @property
    def input_mask(self) -> int:
        """Input signal bit mask (can be used to reduce power consumption)."""
        return self.regset.msk.cfg_msk

    @input_mask.setter
    def input_mask(self, value: int):
        self.regset.msk.cfg_msk = value

    @property
    def input_polarity(self) -> int:
        """Input signal bit polarity."""
        return self.regset.msk.cfg_pol

    @input_polarity.setter
    def input_polarity(self, value: int):
        self.regset.msk.cfg_pol = value

    @property
    def decimation(self) -> int:
        """Decimation factor."""
        return (self.regset.cfg_dec + 1)

    @decimation.setter
    def decimation(self, value: int):
        # TODO check range
        self.regset.cfg_dec = value - 1
