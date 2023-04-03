----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2017 12:47:10 PM
-- Design Name: 
-- Module Name: adc_processing - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity adc_processing is
    Port (  adc_dat_a_i : in STD_LOGIC_VECTOR(13 downto 0);
            adc_dat_b_i : in STD_LOGIC_VECTOR(13 downto 0);
            clk : in STD_LOGIC;
            led_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
    
end adc_processing;

architecture Behavioral of adc_processing is

    constant clk_freq : NATURAL := 125000000;
    constant led_freq : NATURAL := 16;

    signal clk_counter : NATURAL range 0 to clk_freq;
    signal clk_led : STD_LOGIC := '0';
    
begin
    process(clk)
    begin
        if rising_edge(clk) then
            
            -- Reset counter every clk_freq/led_freq to get a slower clock at speed led_freq
            if clk_counter >= clk_freq/led_freq then
                clk_counter <= 0;
                clk_led <= '0';
            -- Clock pulse at half value
            elsif clk_counter >= clk_freq/led_freq/2 then
                clk_led <= '1';
            end if;
            
            -- Increment clock counter
            clk_counter <= clk_counter + 1;
            
        end if;
    end process;
    
    process(clk_led)
    begin
        if rising_edge(clk_led) then
           --  led_out <= adc_dat_a_i(13 downto 6);
           led_out <= adc_dat_a_i(7 downto 0);
        end if;
    end process;
    
end Behavioral;
