-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2017 01:20:08 PM
-- Design Name: 
-- Module Name: scratchpad - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity scratchpad is
  Port ( clk_125MHz : in STD_LOGIC;
         adc_dat_i  : in STD_LOGIC_VECTOR(13 downto 0);
         led_out : out STD_LOGIC_VECTOR(7 downto 0));
end scratchpad;

architecture Behavioral of scratchpad is

signal clock_counter : STD_LOGIC_VECTOR(26 downto 0) := (others => '0');
signal clk_led : STD_LOGIC;

begin

-- Keep a 27 bit counter for the clock. I.E. increment from 0 to 125e+6 each second, and then reset.
-- Use this to drive clk_1Hz.T
process(clk_125MHz)
begin
    if rising_edge(clk_125MHz) then
        if to_integer(unsigned(clock_counter))>125000000/100 then
            clock_counter <= (others => '0');
        else
            clock_counter <= clock_counter + "1";
        end if;
        
        if to_integer(unsigned(clock_counter))>125000000/200 then
            clk_led <= '1';
        else
            clk_led <= '0';
        end if;
    end if;
end process;

process (clk_led)
    variable magnitude : natural;
    variable value : integer;
    variable sign_bit : std_logic;
    variable led_counter : natural;
begin
    if rising_edge(clk_led) then
--        led_out(0) <= adc_dat_i(6);
--        led_out(1) <= adc_dat_i(7);
--        led_out(2) <= adc_dat_i(8);
--        led_out(3) <= adc_dat_i(9);
--        led_out(4) <= adc_dat_i(10);
--        led_out(5) <= adc_dat_i(11);
--        led_out(6) <= adc_dat_i(12);
--        led_out(7) <= adc_dat_i(13);

        -- Sign bit from the data. 1 here means positive, 0 means negative.
        sign_bit := adc_dat_i(13);
        
        -- Magnitude counts up 0 to 4096 for increasing positive numbers
        -- Magnitude counts up down from 4096 to 0 for increasingly negative numbers 
        
        magnitude :=  to_integer(unsigned(adc_dat_i(12 downto 0)));
        
        if sign_bit ='1' then
            value := magnitude;
        else
            value := magnitude - 4096;
        end if;
        
        led_counter := value / 1024 + 4;
        
--        if sign_bit = '1' then
--            led_counter <= 4 + magnitude;
--        else
--            led_counter <= 4 - magnitude;
--        end if;
        
        led_out <= (others => '0');
        led_out(led_counter) <= '1';
    end if;
end process;


--process (clk_8Hz)
--begin
--    if rising_edge(clk_8Hz) then
--        if led_direction='1' then
--            if led_counter = 7 then
--                led_direction <= '0';
--            else
--                led_counter <= led_counter + 1;
--            end if;
--        else
--            if led_counter = 0 then
--                led_direction <= '1';
--            else
--                led_counter <= led_counter - 1;
--            end if;
--        end if
        
--        led_out <= (others => '0');
--        led_out(led_counter) <= '1';
--    end if;
--end process;


-- This doesn't work; can't use a signal here
--led_out <= ( led_counter => '1', others => '0');

--led_out(7 downto 1) <= "1010101";

end Behavioral;
