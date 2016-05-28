library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce is
  port( CLK     : in  std_logic;  --input clock
        button  : in  std_logic;  --input signal to be debounced
        result  : out std_logic); --debounced signal
end debounce;

architecture behave of debounce is
  signal   inff    : std_logic_vector(1 downto 0); -- input flip flops
  constant cnt_max : integer := 500000 ; --500000clock 
  signal   count   : integer range 0 to cnt_max := 0; 
  signal	  keepResult : std_logic := '1';
begin
  result <= keepResult;
  process(CLK)
  begin
	
    if(CLK'event and CLK = '1') then
      inff <= inff(0) & button;  -- sync in the input
      if(inff(0)/=inff(1)) then  -- reset counter because input is changing
        count <= 0;
      elsif(count<cnt_max) then  -- stable input time is not yet met
        count <= count + 1;
      else                       -- stable input time is met
        keepResult <= inff(1);
      end if;    
    end if;
  end process;
end behave;