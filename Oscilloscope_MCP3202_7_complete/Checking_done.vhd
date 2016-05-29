library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity Checking_done is -- "10" detector
  port( CLK     : in  std_logic; --clock
			reset  : in  std_logic; --reset
			logic_in :	in  std_logic; --input
			outputx : out std_logic := '0'); 
end Checking_done;

architecture behave of Checking_done is
	type state_type is (S0, S1);
	signal state : state_type := S0;
	signal tmp : integer := 0 ;
	constant tmpMax : integer := 1 ;
	begin
	process(CLK,reset)
			begin
				
				if rising_edge(CLK) then
					if (reset='0') then 
							state <= S0;
							tmp <= 0;
					end if;
					
					case state is
						when S0 =>
							if(logic_in = '0')then
								state <= S1;
								tmp <= tmp ;
							else
								state <= S0;
								tmp <= tmp ;
							end if;
						when S1 =>
							if(logic_in = '1')then
								state <= S0;
								tmp <= tmp + 1;
							else
								state <= S1;
								tmp <= tmp ;
							end if;
						
					end case;
					--if tmp = tmpMax set outputx '1'  1clock
					if(tmp=tmpMax)then
						tmp <= 0;
						outputx <= '1' ;
					else 
						outputx <= '0';
					end if;
				end if;
		end process;
	end behave;