library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_master is
  generic( WAIT_COUNT_MAX : integer := 100 ;--1/2 SPI clk period
			  data_M_to_S: integer := 4; --data send master to slave**************
			  data_S_to_M: integer := 12);--data send slave to master**************
  port(
    CLK       : in  std_logic; --clock input
    RST_N     : in  std_logic; --Reset
    START     : in  std_logic; --Start
   -- HOLD_SS_N : in  std_logic; --status CS logic before active 
    WDATA     : in  std_logic_vector( data_M_to_S-1 downto 0 ); --data writed master to slave 
    RDATA     : out std_logic_vector( data_S_to_M-1 downto 0 ) := (others => '0'); --data resived slave to master 
    DONE      : out std_logic; 
    -- SPI interface
    SPI_SCK   : out std_logic;
    SPI_MOSI  : out std_logic;
    SPI_MISO  : in  std_logic;
    SPI_SS_N  : out std_logic;
	 TX			: out std_logic );
end SPI_master;

architecture behave of SPI_master is
	--signal WDATA   :  std_logic_vector( data_M_to_S-1 downto 0 ):= "1101" ;
	signal HOLD_SS_N : std_logic := '1';
  type state_type is (S0,S1,S2,S3,S4,S5,S6,S7,S8);
  signal state : state_type := S0;
  
 -- signal bit_count  : integer range 0 to  7 := 0;
  signal wait_count : integer range 0 to 100 := 0;
  signal sreg       : std_logic_vector( data_M_to_S-1 downto 0 ) ;
  signal rreg       : std_logic_vector( data_S_to_M downto 0 ) ;--**null bit
  signal spi_cs_n   : std_logic := '1';
  signal index_send  : integer range 0 to  15 ;
  signal index_resive  : integer range 0 to  15 ;
begin
   
  process ( RST_N, CLK )
  begin
     if RST_N = '0' then -- active-low reset
       SPI_MOSI <= '1';
       SPI_SCK  <= '0';
       SPI_SS_N <= '1';
       DONE     <= '1';
       RDATA    <= (others => '0');
       state    <= S0;

     elsif rising_edge( CLK ) then
       case state is
         when S0 =>  
            SPI_SS_N   <= HOLD_SS_N; --initial status CS 
            SPI_MOSI   <= '0';
            SPI_SCK    <= '0';
            wait_count <= WAIT_COUNT_MAX;
				index_send <= 1;
				index_resive <= 0; --add null bit
            if START = '1' then	 -- start pulse detected
              sreg     <= WDATA;  -- capture input data to send
              DONE     <= '0';    -- de-assert DONE
              state    <= S1;	    -- goto S1
            end if;

         when S1 =>
           SPI_SS_N <= '0'; 		 -- CS Low 
           SPI_MOSI <= sreg(data_M_to_S - index_send);   -- send data master to slave MSB first
			  SPI_SCK  <= '0';       -- SCK low
           state    <= S2;

         when S2 =>
           if wait_count /= 0 then	--wait_count is not equal to 0,this loop wait until half SPI clk period  
              wait_count <= wait_count - 1; -- decrement wait counter
				  SPI_SCK    <= '0';            -- SCK low
           else
              SPI_SCK    <= '1';            -- SCK high
				  index_send <= index_send + 1;  --increase index_send
				  wait_count <= WAIT_COUNT_MAX;
				  state    <= S3;
			  end if;

			when S3 =>
			  if wait_count /= 0 then
              wait_count <= wait_count - 1; -- decrement wait counter
           else
              SPI_SCK  <= '0';   -- SCK low
              wait_count <= WAIT_COUNT_MAX;
				  state <= S4;
				end if;
				 
			when S4 => --check number of index data master send to slave
			  if index_send > data_M_to_S then
               state <= S5;
			  else 
					state <= S1;
			  end if;
				
         when S5 => --keep data from ADC
           if wait_count /= 0 then
             wait_count <= wait_count - 1; -- decrement wait counter
           else
             SPI_SCK    <= '1';            -- SCK high
             rreg(data_S_to_M - index_resive) <= SPI_MISO; --keep data from ADC
				 wait_count <= WAIT_COUNT_MAX;
				 state <= S6;
           end if;
			  
		   when S6 => 
           if wait_count /= 0 then
             wait_count <= wait_count - 1; -- decrement wait counter
           else
             SPI_SCK    <= '0';            -- SCK high
             index_resive <= index_resive + 1;  --increase index_resive
				 wait_count <= WAIT_COUNT_MAX;
 				 state <= S7;
           end if;
			  
			when S7 =>
			  if index_resive > data_S_to_M then
               state <= S8;
					
			  else 
					state <= S5;
				end if;
			  
			 when S8 =>
				RDATA <= rreg(data_S_to_M -1 downto 0);
				SPI_MOSI <= '1';
				SPI_SCK  <= '0';
				SPI_SS_N <= '1';
				DONE     <= '1';
				state <= S0;
           
        when others =>
           state <= S0;
 
       end case;
    
    end if;
  end process;

end behave;
