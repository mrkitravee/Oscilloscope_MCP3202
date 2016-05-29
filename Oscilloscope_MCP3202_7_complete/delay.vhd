library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity delay is
port (clk : in std_logic;--clk
		req : in std_logic;--input
		b : out std_logic ;--output
		reset : in std_logic);--reset
end delay;
 
architecture counter of delay is
 signal Check : integer := 0;--check
 constant D_lay : integer := 2;--delay time 
 signal start : std_logic :='1';--start counting 
 type state_type is (
			WAIT_FOR_REQ,
			START_COUNT);
signal state : state_type := WAIT_FOR_REQ;
begin 
	process(clk)
		begin
		if(reset = '0')then
			Check <= 0 ;	
			b<= '0';
		elsif(clk'event and clk='1') then
			case state is 
				when WAIT_FOR_REQ => 
					if(start = '1' or req = '1') then
						state <= START_COUNT;
						start <= '0';
						
					end if;
				when START_COUNT => 
					if(Check = D_lay)then
						Check <= 0 ;	
						b<= '0';
						state <= WAIT_FOR_REQ ;
					else
						Check <= Check + 1;
					end if;
		
					if(Check = D_lay-1) then
						b <= '1' ;
					end if;
			end case;
		end if;
	end process;
end counter ;