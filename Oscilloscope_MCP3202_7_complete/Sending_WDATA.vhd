library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity Sending_WDATA is
	port(PB: in std_logic; --input
			CLK : in std_logic; --clk
			reset: in std_logic; --reset
			O : out std_logic_vector(3 downto 0)--output
			);
end Sending_WDATA;

architecture Behavioral of Sending_WDATA is
	signal tmp : integer := 1;
	signal isPushed : std_logic := '0'; 
	subtype ROM_data_BITS is std_logic_vector(3 downto 0);
	subtype ROM_data_ADDR is integer range 0 to 1;
	type ROM_data is array (ROM_data_ADDR) of ROM_data_BITS;
	constant ROM_TABLE : ROM_data := (
		b"1101",
		b"1111"
		);
	begin
		process(reset, CLK)
			begin
			  if(reset='0' ) then
					isPushed <= '0';
				   tmp <= 0;
			  elsif (CLK'event and clk='1') then
					--when PB change '1' to '0' send data out 
					if(PB = '0' and isPushed = '0') then 
                  isPushed<='1';  
					elsif(PB='1' and isPushed = '1')then
						if(tmp = 1)then 
								tmp<=0;
						end if;
						tmp <= tmp + 1; 
						isPushed<='0';
					end if;
				end if;
			end process;
			O <= ROM_TABLE(tmp); -- send data out from ROM table
end Behavioral;					