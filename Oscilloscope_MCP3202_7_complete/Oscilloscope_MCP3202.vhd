library ieee;
use ieee.std_logic_1164.all;
entity Oscilloscope_MCP3202 is
	generic( WAIT_COUNT_MAX : integer := 100 ;--1/2 SPI clk period
			  data_M_to_S: integer := 4; --data send master to slave**************
			  data_S_to_M: integer := 12;--data send slave to master**************
			  SYSTEM_SPEED : integer := 50e6;
				BAUDRATE		 : integer := 115200);
	port(CLK       : in  std_logic; --clock input
    RST_N     : in  std_logic; --Reset
    SPI_SCK   : out std_logic; --SPI clock
    SPI_MOSI  : out std_logic; --master out slave in
    SPI_MISO  : in  std_logic; --master in slave out
    SPI_SS_N  : out std_logic;
	 ack_check : out std_logic;
	 TX_out		  : out std_logic);--RS232 TX
end Oscilloscope_MCP3202;

architecture Structural of Oscilloscope_MCP3202 is
	signal TX_Din : std_logic_vector(11 downto 0) := (others=>'0');
	signal FINISH_Sending : std_logic;
	signal SEND_TX : std_logic;
	signal START_SPI : std_logic;
	signal OUT_debounce : std_logic;
	signal WDATA_out : std_logic_vector(3 downto 0);
	signal Detect_to_tx : std_logic_vector(3 downto 0);
	signal  ack_o     : std_logic := '0' ;
	signal Delay_o : std_logic ;
	begin
		delay : WORK.delay
			port map(CLK=>CLK,req=>ack_o,b=>Delay_o,reset =>RST_N);	
		
		Send_WDATA1 : WORK.Sending_WDATA
			port map(PB => Delay_o  , CLK=> CLK, reset=> RST_N,O=>WDATA_out);
		
		Detect1 : WORK.Detect_CH
			port map(I=>WDATA_out , O => Detect_to_tx);
			
		Check1 : WORK.Checking_done
			port map(CLK=>CLK ,reset=>RST_N , logic_in=> Delay_o  , outputx=>START_SPI);
			
		SPI1 : WORK.SPI_master
			port map(CLK=>CLK ,RST_N=>RST_N ,START=>START_SPI  , WDATA=>WDATA_out,
						RDATA=>TX_Din ,DONE=>FINISH_Sending ,SPI_SCK=>SPI_SCK ,
						SPI_MOSI=>SPI_MOSI ,SPI_MISO=>SPI_MISO ,SPI_SS_N=>SPI_SS_N);	
		
		Check2 : WORK.Checking_done
			port map(CLK=>CLK ,reset=>RST_N , logic_in=>FINISH_Sending , outputx=>SEND_TX);
			
		TX1  : WORK.rs232_tx
			port map(clk_i=>CLK, rst_i=>RST_N, req_i=> SEND_TX, ack_o=> ack_o , data_i=>TX_Din,select_ch => Detect_to_tx, tx=>TX_out , ack_o_check => ack_check);--req_i=> SEND_TX
end Structural;