library ieee;
use ieee.std_logic_1164.all;

entity Detect_CH is
	port(
			I : in std_logic_vector(3 downto 0);
			--CLK : in std_logic;
			O : out std_logic_vector(3 downto 0));
end Detect_CH;

architecture data_process of Detect_CH is
begin
	process(I)
		begin
			--if clk'event and clk='1' then
				case I is
					when "1101" => O <= "0000";--CH0 Ossiloscope
					when "1111" => O <= "0001";--CH1 Ossiloscope
					when others => O <= "0000";--def
					
				end case;
	end process;
end data_process;	