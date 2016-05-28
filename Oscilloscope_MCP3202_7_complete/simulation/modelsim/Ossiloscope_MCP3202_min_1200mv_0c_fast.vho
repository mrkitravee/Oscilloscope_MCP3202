-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/23/2016 22:54:07"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ossiloscope_MCP3202 IS
    PORT (
	CLK : IN std_logic;
	RST_N : IN std_logic;
	START : IN std_logic;
	HOLD_SS_N : IN std_logic;
	WDATA : IN std_logic_vector(3 DOWNTO 0);
	RDATA : OUT std_logic_vector(11 DOWNTO 0);
	DONE : OUT std_logic;
	SPI_SCK : OUT std_logic;
	SPI_MOSI : OUT std_logic;
	SPI_MISO : IN std_logic;
	SPI_SS_N : OUT std_logic;
	TX : OUT std_logic;
	ack_o : OUT std_logic
	);
END Ossiloscope_MCP3202;

-- Design Ports Information
-- RDATA[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[1]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[5]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[8]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[9]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[10]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RDATA[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_SCK	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MOSI	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_MISO	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SPI_SS_N	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ack_o	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_N	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[2]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[0]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WDATA[3]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOLD_SS_N	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ossiloscope_MCP3202 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_HOLD_SS_N : std_logic;
SIGNAL ww_WDATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RDATA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_DONE : std_logic;
SIGNAL ww_SPI_SCK : std_logic;
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL ww_SPI_MISO : std_logic;
SIGNAL ww_SPI_SS_N : std_logic;
SIGNAL ww_TX : std_logic;
SIGNAL ww_ack_o : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST_N~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI_MISO~input_o\ : std_logic;
SIGNAL \RDATA[0]~output_o\ : std_logic;
SIGNAL \RDATA[1]~output_o\ : std_logic;
SIGNAL \RDATA[2]~output_o\ : std_logic;
SIGNAL \RDATA[3]~output_o\ : std_logic;
SIGNAL \RDATA[4]~output_o\ : std_logic;
SIGNAL \RDATA[5]~output_o\ : std_logic;
SIGNAL \RDATA[6]~output_o\ : std_logic;
SIGNAL \RDATA[7]~output_o\ : std_logic;
SIGNAL \RDATA[8]~output_o\ : std_logic;
SIGNAL \RDATA[9]~output_o\ : std_logic;
SIGNAL \RDATA[10]~output_o\ : std_logic;
SIGNAL \RDATA[11]~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \SPI_SCK~output_o\ : std_logic;
SIGNAL \SPI_MOSI~output_o\ : std_logic;
SIGNAL \SPI_SS_N~output_o\ : std_logic;
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \ack_o~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \SPI1|Selector19~0_combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \RST_N~inputclkctrl_outclk\ : std_logic;
SIGNAL \SPI1|state.S0~q\ : std_logic;
SIGNAL \SPI1|wait_count[0]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SPI1|wait_count[1]~10_combout\ : std_logic;
SIGNAL \SPI1|Selector26~0_combout\ : std_logic;
SIGNAL \SPI1|state.S7~feeder_combout\ : std_logic;
SIGNAL \SPI1|state.S7~q\ : std_logic;
SIGNAL \SPI1|wait_count[6]~7_combout\ : std_logic;
SIGNAL \SPI1|wait_count[6]~11_combout\ : std_logic;
SIGNAL \SPI1|wait_count[0]~9\ : std_logic;
SIGNAL \SPI1|wait_count[1]~12_combout\ : std_logic;
SIGNAL \SPI1|wait_count[1]~13\ : std_logic;
SIGNAL \SPI1|wait_count[2]~14_combout\ : std_logic;
SIGNAL \SPI1|wait_count[2]~15\ : std_logic;
SIGNAL \SPI1|wait_count[3]~16_combout\ : std_logic;
SIGNAL \SPI1|Equal0~0_combout\ : std_logic;
SIGNAL \SPI1|wait_count[3]~17\ : std_logic;
SIGNAL \SPI1|wait_count[4]~18_combout\ : std_logic;
SIGNAL \SPI1|wait_count[4]~19\ : std_logic;
SIGNAL \SPI1|wait_count[5]~20_combout\ : std_logic;
SIGNAL \SPI1|wait_count[5]~21\ : std_logic;
SIGNAL \SPI1|wait_count[6]~22_combout\ : std_logic;
SIGNAL \SPI1|Equal0~1_combout\ : std_logic;
SIGNAL \SPI1|Selector12~2_combout\ : std_logic;
SIGNAL \SPI1|Selector13~0_combout\ : std_logic;
SIGNAL \SPI1|Selector11~0_combout\ : std_logic;
SIGNAL \SPI1|Selector12~3_combout\ : std_logic;
SIGNAL \SPI1|Add2~1_combout\ : std_logic;
SIGNAL \SPI1|Selector11~1_combout\ : std_logic;
SIGNAL \SPI1|Add2~0_combout\ : std_logic;
SIGNAL \SPI1|Selector10~0_combout\ : std_logic;
SIGNAL \SPI1|LessThan0~0_combout\ : std_logic;
SIGNAL \SPI1|Selector20~0_combout\ : std_logic;
SIGNAL \SPI1|state.S1~q\ : std_logic;
SIGNAL \SPI1|Selector21~0_combout\ : std_logic;
SIGNAL \SPI1|state.S2~q\ : std_logic;
SIGNAL \SPI1|state.S3~q\ : std_logic;
SIGNAL \SPI1|Selector23~0_combout\ : std_logic;
SIGNAL \SPI1|state.S4~q\ : std_logic;
SIGNAL \SPI1|Selector24~0_combout\ : std_logic;
SIGNAL \SPI1|Selector24~1_combout\ : std_logic;
SIGNAL \SPI1|state.S5~q\ : std_logic;
SIGNAL \SPI1|state.S6~q\ : std_logic;
SIGNAL \SPI1|Selector17~0_combout\ : std_logic;
SIGNAL \SPI1|Selector15~0_combout\ : std_logic;
SIGNAL \SPI1|Selector16~0_combout\ : std_logic;
SIGNAL \SPI1|Add4~1_combout\ : std_logic;
SIGNAL \SPI1|Selector15~1_combout\ : std_logic;
SIGNAL \SPI1|Add4~0_combout\ : std_logic;
SIGNAL \SPI1|Selector14~0_combout\ : std_logic;
SIGNAL \SPI1|LessThan1~0_combout\ : std_logic;
SIGNAL \SPI1|Selector27~0_combout\ : std_logic;
SIGNAL \SPI1|state.S8~q\ : std_logic;
SIGNAL \SPI1|Selector18~0_combout\ : std_logic;
SIGNAL \SPI1|DONE~q\ : std_logic;
SIGNAL \SPI1|Selector2~0_combout\ : std_logic;
SIGNAL \SPI1|Selector2~1_combout\ : std_logic;
SIGNAL \SPI1|Selector2~2_combout\ : std_logic;
SIGNAL \SPI1|SPI_SCK~q\ : std_logic;
SIGNAL \WDATA[2]~input_o\ : std_logic;
SIGNAL \SPI1|sreg[2]~feeder_combout\ : std_logic;
SIGNAL \SPI1|sreg[3]~0_combout\ : std_logic;
SIGNAL \WDATA[1]~input_o\ : std_logic;
SIGNAL \WDATA[3]~input_o\ : std_logic;
SIGNAL \SPI1|sreg[3]~feeder_combout\ : std_logic;
SIGNAL \WDATA[0]~input_o\ : std_logic;
SIGNAL \SPI1|Mux0~0_combout\ : std_logic;
SIGNAL \SPI1|Mux0~1_combout\ : std_logic;
SIGNAL \SPI1|Selector1~0_combout\ : std_logic;
SIGNAL \SPI1|Selector1~1_combout\ : std_logic;
SIGNAL \SPI1|SPI_MOSI~q\ : std_logic;
SIGNAL \HOLD_SS_N~input_o\ : std_logic;
SIGNAL \SPI1|Selector0~0_combout\ : std_logic;
SIGNAL \SPI1|Selector0~1_combout\ : std_logic;
SIGNAL \SPI1|SPI_SS_N~q\ : std_logic;
SIGNAL \Check1|state~q\ : std_logic;
SIGNAL \Check1|Add0~0_combout\ : std_logic;
SIGNAL \Check1|tmp[0]~4_combout\ : std_logic;
SIGNAL \Check1|Add0~1\ : std_logic;
SIGNAL \Check1|Add0~2_combout\ : std_logic;
SIGNAL \Check1|tmp[1]~3_combout\ : std_logic;
SIGNAL \Check1|Add0~3\ : std_logic;
SIGNAL \Check1|Add0~4_combout\ : std_logic;
SIGNAL \Check1|tmp[2]~2_combout\ : std_logic;
SIGNAL \Check1|Add0~5\ : std_logic;
SIGNAL \Check1|Add0~6_combout\ : std_logic;
SIGNAL \Check1|tmp[3]~1_combout\ : std_logic;
SIGNAL \Check1|Add0~7\ : std_logic;
SIGNAL \Check1|Add0~8_combout\ : std_logic;
SIGNAL \Check1|tmp[4]~0_combout\ : std_logic;
SIGNAL \Check1|Add0~9\ : std_logic;
SIGNAL \Check1|Add0~10_combout\ : std_logic;
SIGNAL \Check1|tmp[5]~5_combout\ : std_logic;
SIGNAL \Check1|Add0~11\ : std_logic;
SIGNAL \Check1|Add0~12_combout\ : std_logic;
SIGNAL \Check1|tmp[6]~6_combout\ : std_logic;
SIGNAL \Check1|Add0~13\ : std_logic;
SIGNAL \Check1|Add0~14_combout\ : std_logic;
SIGNAL \Check1|tmp[7]~7_combout\ : std_logic;
SIGNAL \Check1|Add0~15\ : std_logic;
SIGNAL \Check1|Add0~16_combout\ : std_logic;
SIGNAL \Check1|tmp[8]~8_combout\ : std_logic;
SIGNAL \Check1|Add0~17\ : std_logic;
SIGNAL \Check1|Add0~18_combout\ : std_logic;
SIGNAL \Check1|tmp[9]~9_combout\ : std_logic;
SIGNAL \Check1|Add0~19\ : std_logic;
SIGNAL \Check1|Add0~20_combout\ : std_logic;
SIGNAL \Check1|tmp[10]~10_combout\ : std_logic;
SIGNAL \Check1|Add0~21\ : std_logic;
SIGNAL \Check1|Add0~22_combout\ : std_logic;
SIGNAL \Check1|tmp[11]~11_combout\ : std_logic;
SIGNAL \Check1|Add0~23\ : std_logic;
SIGNAL \Check1|Add0~24_combout\ : std_logic;
SIGNAL \Check1|tmp[12]~12_combout\ : std_logic;
SIGNAL \Check1|Add0~25\ : std_logic;
SIGNAL \Check1|Add0~26_combout\ : std_logic;
SIGNAL \Check1|tmp[13]~13_combout\ : std_logic;
SIGNAL \Check1|Add0~27\ : std_logic;
SIGNAL \Check1|Add0~28_combout\ : std_logic;
SIGNAL \Check1|tmp[14]~14_combout\ : std_logic;
SIGNAL \Check1|Add0~29\ : std_logic;
SIGNAL \Check1|Add0~30_combout\ : std_logic;
SIGNAL \Check1|tmp[15]~15_combout\ : std_logic;
SIGNAL \Check1|Add0~31\ : std_logic;
SIGNAL \Check1|Add0~32_combout\ : std_logic;
SIGNAL \Check1|tmp[16]~16_combout\ : std_logic;
SIGNAL \Check1|Add0~33\ : std_logic;
SIGNAL \Check1|Add0~34_combout\ : std_logic;
SIGNAL \Check1|tmp[17]~17_combout\ : std_logic;
SIGNAL \Check1|Add0~35\ : std_logic;
SIGNAL \Check1|Add0~36_combout\ : std_logic;
SIGNAL \Check1|tmp[18]~18_combout\ : std_logic;
SIGNAL \Check1|Add0~37\ : std_logic;
SIGNAL \Check1|Add0~38_combout\ : std_logic;
SIGNAL \Check1|tmp[19]~19_combout\ : std_logic;
SIGNAL \Check1|Add0~39\ : std_logic;
SIGNAL \Check1|Add0~40_combout\ : std_logic;
SIGNAL \Check1|tmp[20]~20_combout\ : std_logic;
SIGNAL \Check1|Add0~41\ : std_logic;
SIGNAL \Check1|Add0~42_combout\ : std_logic;
SIGNAL \Check1|tmp[21]~21_combout\ : std_logic;
SIGNAL \Check1|Add0~43\ : std_logic;
SIGNAL \Check1|Add0~44_combout\ : std_logic;
SIGNAL \Check1|tmp[22]~22_combout\ : std_logic;
SIGNAL \Check1|Add0~45\ : std_logic;
SIGNAL \Check1|Add0~46_combout\ : std_logic;
SIGNAL \Check1|tmp[23]~23_combout\ : std_logic;
SIGNAL \Check1|Equal0~6_combout\ : std_logic;
SIGNAL \Check1|Equal0~5_combout\ : std_logic;
SIGNAL \Check1|Add0~47\ : std_logic;
SIGNAL \Check1|Add0~48_combout\ : std_logic;
SIGNAL \Check1|tmp[24]~24_combout\ : std_logic;
SIGNAL \Check1|Add0~49\ : std_logic;
SIGNAL \Check1|Add0~50_combout\ : std_logic;
SIGNAL \Check1|tmp[25]~25_combout\ : std_logic;
SIGNAL \Check1|Add0~51\ : std_logic;
SIGNAL \Check1|Add0~52_combout\ : std_logic;
SIGNAL \Check1|tmp[26]~26_combout\ : std_logic;
SIGNAL \Check1|Add0~53\ : std_logic;
SIGNAL \Check1|Add0~54_combout\ : std_logic;
SIGNAL \Check1|tmp[27]~27_combout\ : std_logic;
SIGNAL \Check1|Add0~55\ : std_logic;
SIGNAL \Check1|Add0~56_combout\ : std_logic;
SIGNAL \Check1|tmp[28]~28_combout\ : std_logic;
SIGNAL \Check1|Add0~57\ : std_logic;
SIGNAL \Check1|Add0~58_combout\ : std_logic;
SIGNAL \Check1|tmp[29]~29_combout\ : std_logic;
SIGNAL \Check1|Add0~59\ : std_logic;
SIGNAL \Check1|Add0~60_combout\ : std_logic;
SIGNAL \Check1|tmp[30]~30_combout\ : std_logic;
SIGNAL \Check1|Add0~61\ : std_logic;
SIGNAL \Check1|Add0~62_combout\ : std_logic;
SIGNAL \Check1|tmp[31]~31_combout\ : std_logic;
SIGNAL \Check1|Equal0~7_combout\ : std_logic;
SIGNAL \Check1|Equal0~8_combout\ : std_logic;
SIGNAL \Check1|Equal0~9_combout\ : std_logic;
SIGNAL \Check1|Equal0~2_combout\ : std_logic;
SIGNAL \Check1|Equal0~3_combout\ : std_logic;
SIGNAL \Check1|Equal0~0_combout\ : std_logic;
SIGNAL \Check1|Equal0~1_combout\ : std_logic;
SIGNAL \Check1|Equal0~4_combout\ : std_logic;
SIGNAL \Check1|Equal0~10_combout\ : std_logic;
SIGNAL \Check1|outputx~feeder_combout\ : std_logic;
SIGNAL \Check1|outputx~q\ : std_logic;
SIGNAL \TX1|baudrate_counter[0]~5_combout\ : std_logic;
SIGNAL \TX1|state~13_combout\ : std_logic;
SIGNAL \TX1|state~18_combout\ : std_logic;
SIGNAL \TX1|bit_counter[3]~6_combout\ : std_logic;
SIGNAL \TX1|bit_counter[0]~1_combout\ : std_logic;
SIGNAL \TX1|bit_counter[0]~2_combout\ : std_logic;
SIGNAL \TX1|bit_counter[0]~4_combout\ : std_logic;
SIGNAL \TX1|bit_counter[1]~5_combout\ : std_logic;
SIGNAL \TX1|bit_counter[2]~0_combout\ : std_logic;
SIGNAL \TX1|bit_counter[2]~3_combout\ : std_logic;
SIGNAL \TX1|Equal1~0_combout\ : std_logic;
SIGNAL \TX1|state~10_combout\ : std_logic;
SIGNAL \TX1|state~19_combout\ : std_logic;
SIGNAL \TX1|state~21_combout\ : std_logic;
SIGNAL \TX1|state.SEND_START_BIT~q\ : std_logic;
SIGNAL \TX1|baudrate_counter[2]~2_combout\ : std_logic;
SIGNAL \TX1|baudrate_counter[2]~3_combout\ : std_logic;
SIGNAL \TX1|baudrate_counter[2]~4_combout\ : std_logic;
SIGNAL \TX1|Equal0~0_combout\ : std_logic;
SIGNAL \TX1|state~17_combout\ : std_logic;
SIGNAL \TX1|state~20_combout\ : std_logic;
SIGNAL \TX1|state.SEND_STOP_BIT~q\ : std_logic;
SIGNAL \TX1|baudrate_counter[0]~0_combout\ : std_logic;
SIGNAL \TX1|baudrate_counter[0]~1_combout\ : std_logic;
SIGNAL \TX1|baudrate_counter[1]~6_combout\ : std_logic;
SIGNAL \TX1|state~12_combout\ : std_logic;
SIGNAL \TX1|state~16_combout\ : std_logic;
SIGNAL \TX1|state.SEND_BITS~q\ : std_logic;
SIGNAL \TX1|state~11_combout\ : std_logic;
SIGNAL \TX1|state~14_combout\ : std_logic;
SIGNAL \TX1|state~15_combout\ : std_logic;
SIGNAL \TX1|state.WAIT_FOR_REQ~q\ : std_logic;
SIGNAL \TX1|data_sending_started~0_combout\ : std_logic;
SIGNAL \TX1|data_sending_started~q\ : std_logic;
SIGNAL \TX1|ack_o~combout\ : std_logic;
SIGNAL \SPI1|wait_count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SPI1|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI1|index_send\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SPI1|index_resive\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Check1|tmp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TX1|bit_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX1|baudrate_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \SPI1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \SPI1|ALT_INV_SPI_MOSI~q\ : std_logic;
SIGNAL \SPI1|ALT_INV_DONE~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST_N <= RST_N;
ww_START <= START;
ww_HOLD_SS_N <= HOLD_SS_N;
ww_WDATA <= WDATA;
RDATA <= ww_RDATA;
DONE <= ww_DONE;
SPI_SCK <= ww_SPI_SCK;
SPI_MOSI <= ww_SPI_MOSI;
ww_SPI_MISO <= SPI_MISO;
SPI_SS_N <= ww_SPI_SS_N;
TX <= ww_TX;
ack_o <= ww_ack_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\RST_N~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST_N~input_o\);
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\SPI1|ALT_INV_Equal0~1_combout\ <= NOT \SPI1|Equal0~1_combout\;
\SPI1|ALT_INV_SPI_MOSI~q\ <= NOT \SPI1|SPI_MOSI~q\;
\SPI1|ALT_INV_DONE~q\ <= NOT \SPI1|DONE~q\;

-- Location: IOOBUF_X3_Y24_N23
\RDATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[0]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\RDATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\RDATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\RDATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\RDATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\RDATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\RDATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\RDATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\RDATA[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\RDATA[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\RDATA[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[10]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\RDATA[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RDATA[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\DONE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI1|ALT_INV_DONE~q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SPI_SCK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI1|SPI_SCK~q\,
	devoe => ww_devoe,
	o => \SPI_SCK~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\SPI_MOSI~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SPI1|ALT_INV_SPI_MOSI~q\,
	devoe => ww_devoe,
	o => \SPI_MOSI~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\SPI_SS_N~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SPI_SS_N~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\TX~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TX~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\ack_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TX1|ack_o~combout\,
	devoe => ww_devoe,
	o => \ack_o~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\START~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: LCCOMB_X19_Y17_N14
\SPI1|Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector19~0_combout\ = (!\SPI1|state.S8~q\ & ((\START~input_o\) # (\SPI1|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S8~q\,
	datab => \START~input_o\,
	datac => \SPI1|state.S0~q\,
	combout => \SPI1|Selector19~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\RST_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

-- Location: CLKCTRL_G2
\RST_N~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST_N~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST_N~inputclkctrl_outclk\);

-- Location: FF_X19_Y17_N15
\SPI1|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector19~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S0~q\);

-- Location: LCCOMB_X23_Y17_N12
\SPI1|wait_count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[0]~8_combout\ = \SPI1|wait_count\(0) $ (VCC)
-- \SPI1|wait_count[0]~9\ = CARRY(\SPI1|wait_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|wait_count\(0),
	datad => VCC,
	combout => \SPI1|wait_count[0]~8_combout\,
	cout => \SPI1|wait_count[0]~9\);

-- Location: LCCOMB_X23_Y17_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y17_N28
\SPI1|wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[1]~10_combout\ = (!\SPI1|state.S0~q\) # (!\SPI1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|Equal0~1_combout\,
	datad => \SPI1|state.S0~q\,
	combout => \SPI1|wait_count[1]~10_combout\);

-- Location: LCCOMB_X19_Y17_N6
\SPI1|Selector26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector26~0_combout\ = (\SPI1|state.S6~q\ & !\SPI1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|state.S6~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector26~0_combout\);

-- Location: LCCOMB_X19_Y17_N0
\SPI1|state.S7~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|state.S7~feeder_combout\ = \SPI1|Selector26~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|Selector26~0_combout\,
	combout => \SPI1|state.S7~feeder_combout\);

-- Location: FF_X19_Y17_N1
\SPI1|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|state.S7~feeder_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S7~q\);

-- Location: LCCOMB_X19_Y17_N4
\SPI1|wait_count[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[6]~7_combout\ = (!\SPI1|state.S4~q\ & !\SPI1|state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S4~q\,
	datad => \SPI1|state.S7~q\,
	combout => \SPI1|wait_count[6]~7_combout\);

-- Location: LCCOMB_X19_Y17_N24
\SPI1|wait_count[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[6]~11_combout\ = (!\SPI1|state.S8~q\ & (\RST_N~input_o\ & (\SPI1|wait_count[6]~7_combout\ & !\SPI1|state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S8~q\,
	datab => \RST_N~input_o\,
	datac => \SPI1|wait_count[6]~7_combout\,
	datad => \SPI1|state.S1~q\,
	combout => \SPI1|wait_count[6]~11_combout\);

-- Location: FF_X23_Y17_N13
\SPI1|wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[0]~8_combout\,
	asdata => \~GND~combout\,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(0));

-- Location: LCCOMB_X23_Y17_N14
\SPI1|wait_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[1]~12_combout\ = (\SPI1|wait_count\(1) & (\SPI1|wait_count[0]~9\ & VCC)) # (!\SPI1|wait_count\(1) & (!\SPI1|wait_count[0]~9\))
-- \SPI1|wait_count[1]~13\ = CARRY((!\SPI1|wait_count\(1) & !\SPI1|wait_count[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|wait_count\(1),
	datad => VCC,
	cin => \SPI1|wait_count[0]~9\,
	combout => \SPI1|wait_count[1]~12_combout\,
	cout => \SPI1|wait_count[1]~13\);

-- Location: FF_X23_Y17_N15
\SPI1|wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(1));

-- Location: LCCOMB_X23_Y17_N16
\SPI1|wait_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[2]~14_combout\ = (\SPI1|wait_count\(2) & ((GND) # (!\SPI1|wait_count[1]~13\))) # (!\SPI1|wait_count\(2) & (\SPI1|wait_count[1]~13\ $ (GND)))
-- \SPI1|wait_count[2]~15\ = CARRY((\SPI1|wait_count\(2)) # (!\SPI1|wait_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|wait_count\(2),
	datad => VCC,
	cin => \SPI1|wait_count[1]~13\,
	combout => \SPI1|wait_count[2]~14_combout\,
	cout => \SPI1|wait_count[2]~15\);

-- Location: FF_X23_Y17_N17
\SPI1|wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[2]~14_combout\,
	asdata => VCC,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(2));

-- Location: LCCOMB_X23_Y17_N18
\SPI1|wait_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[3]~16_combout\ = (\SPI1|wait_count\(3) & (\SPI1|wait_count[2]~15\ & VCC)) # (!\SPI1|wait_count\(3) & (!\SPI1|wait_count[2]~15\))
-- \SPI1|wait_count[3]~17\ = CARRY((!\SPI1|wait_count\(3) & !\SPI1|wait_count[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|wait_count\(3),
	datad => VCC,
	cin => \SPI1|wait_count[2]~15\,
	combout => \SPI1|wait_count[3]~16_combout\,
	cout => \SPI1|wait_count[3]~17\);

-- Location: FF_X23_Y17_N19
\SPI1|wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(3));

-- Location: LCCOMB_X23_Y17_N30
\SPI1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Equal0~0_combout\ = (\SPI1|wait_count\(0)) # ((\SPI1|wait_count\(2)) # ((\SPI1|wait_count\(1)) # (\SPI1|wait_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|wait_count\(0),
	datab => \SPI1|wait_count\(2),
	datac => \SPI1|wait_count\(1),
	datad => \SPI1|wait_count\(3),
	combout => \SPI1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y17_N20
\SPI1|wait_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[4]~18_combout\ = (\SPI1|wait_count\(4) & ((GND) # (!\SPI1|wait_count[3]~17\))) # (!\SPI1|wait_count\(4) & (\SPI1|wait_count[3]~17\ $ (GND)))
-- \SPI1|wait_count[4]~19\ = CARRY((\SPI1|wait_count\(4)) # (!\SPI1|wait_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|wait_count\(4),
	datad => VCC,
	cin => \SPI1|wait_count[3]~17\,
	combout => \SPI1|wait_count[4]~18_combout\,
	cout => \SPI1|wait_count[4]~19\);

-- Location: FF_X23_Y17_N21
\SPI1|wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(4));

-- Location: LCCOMB_X23_Y17_N22
\SPI1|wait_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[5]~20_combout\ = (\SPI1|wait_count\(5) & (\SPI1|wait_count[4]~19\ & VCC)) # (!\SPI1|wait_count\(5) & (!\SPI1|wait_count[4]~19\))
-- \SPI1|wait_count[5]~21\ = CARRY((!\SPI1|wait_count\(5) & !\SPI1|wait_count[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|wait_count\(5),
	datad => VCC,
	cin => \SPI1|wait_count[4]~19\,
	combout => \SPI1|wait_count[5]~20_combout\,
	cout => \SPI1|wait_count[5]~21\);

-- Location: FF_X23_Y17_N23
\SPI1|wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[5]~20_combout\,
	asdata => VCC,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(5));

-- Location: LCCOMB_X23_Y17_N24
\SPI1|wait_count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|wait_count[6]~22_combout\ = \SPI1|wait_count[5]~21\ $ (\SPI1|wait_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \SPI1|wait_count\(6),
	cin => \SPI1|wait_count[5]~21\,
	combout => \SPI1|wait_count[6]~22_combout\);

-- Location: FF_X23_Y17_N25
\SPI1|wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|wait_count[6]~22_combout\,
	asdata => VCC,
	sload => \SPI1|wait_count[1]~10_combout\,
	ena => \SPI1|wait_count[6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|wait_count\(6));

-- Location: LCCOMB_X23_Y17_N8
\SPI1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Equal0~1_combout\ = (\SPI1|Equal0~0_combout\) # ((\SPI1|wait_count\(6)) # ((\SPI1|wait_count\(5)) # (\SPI1|wait_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Equal0~0_combout\,
	datab => \SPI1|wait_count\(6),
	datac => \SPI1|wait_count\(5),
	datad => \SPI1|wait_count\(4),
	combout => \SPI1|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y17_N10
\SPI1|Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector12~2_combout\ = (\SPI1|state.S2~q\ & !\SPI1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|state.S2~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector12~2_combout\);

-- Location: LCCOMB_X18_Y17_N0
\SPI1|Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector13~0_combout\ = (\SPI1|state.S2~q\ & (\SPI1|Equal0~1_combout\ $ (((!\SPI1|index_send\(0)))))) # (!\SPI1|state.S2~q\ & (((\SPI1|index_send\(0)) # (!\SPI1|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Equal0~1_combout\,
	datab => \SPI1|state.S0~q\,
	datac => \SPI1|index_send\(0),
	datad => \SPI1|state.S2~q\,
	combout => \SPI1|Selector13~0_combout\);

-- Location: FF_X18_Y17_N1
\SPI1|index_send[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector13~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_send\(0));

-- Location: LCCOMB_X18_Y17_N28
\SPI1|Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector11~0_combout\ = (\SPI1|state.S2~q\ & ((\SPI1|Equal0~1_combout\))) # (!\SPI1|state.S2~q\ & (\SPI1|state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|state.S2~q\,
	datac => \SPI1|state.S0~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector11~0_combout\);

-- Location: LCCOMB_X18_Y17_N22
\SPI1|Selector12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector12~3_combout\ = (\SPI1|index_send\(1) & ((\SPI1|Selector11~0_combout\) # ((\SPI1|Selector12~2_combout\ & !\SPI1|index_send\(0))))) # (!\SPI1|index_send\(1) & (\SPI1|Selector12~2_combout\ & (\SPI1|index_send\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Selector12~2_combout\,
	datab => \SPI1|index_send\(0),
	datac => \SPI1|index_send\(1),
	datad => \SPI1|Selector11~0_combout\,
	combout => \SPI1|Selector12~3_combout\);

-- Location: FF_X18_Y17_N23
\SPI1|index_send[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector12~3_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_send\(1));

-- Location: LCCOMB_X18_Y17_N12
\SPI1|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Add2~1_combout\ = \SPI1|index_send\(2) $ (((\SPI1|index_send\(1) & \SPI1|index_send\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|index_send\(2),
	datac => \SPI1|index_send\(1),
	datad => \SPI1|index_send\(0),
	combout => \SPI1|Add2~1_combout\);

-- Location: LCCOMB_X18_Y17_N18
\SPI1|Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector11~1_combout\ = (\SPI1|Add2~1_combout\ & ((\SPI1|Selector12~2_combout\) # ((\SPI1|Selector11~0_combout\ & \SPI1|index_send\(2))))) # (!\SPI1|Add2~1_combout\ & (\SPI1|Selector11~0_combout\ & (\SPI1|index_send\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Add2~1_combout\,
	datab => \SPI1|Selector11~0_combout\,
	datac => \SPI1|index_send\(2),
	datad => \SPI1|Selector12~2_combout\,
	combout => \SPI1|Selector11~1_combout\);

-- Location: FF_X18_Y17_N19
\SPI1|index_send[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector11~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_send\(2));

-- Location: LCCOMB_X18_Y17_N30
\SPI1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Add2~0_combout\ = \SPI1|index_send\(3) $ (((\SPI1|index_send\(1) & (\SPI1|index_send\(2) & \SPI1|index_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_send\(1),
	datab => \SPI1|index_send\(2),
	datac => \SPI1|index_send\(3),
	datad => \SPI1|index_send\(0),
	combout => \SPI1|Add2~0_combout\);

-- Location: LCCOMB_X18_Y17_N4
\SPI1|Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector10~0_combout\ = (\SPI1|Add2~0_combout\ & ((\SPI1|Selector12~2_combout\) # ((\SPI1|Selector11~0_combout\ & \SPI1|index_send\(3))))) # (!\SPI1|Add2~0_combout\ & (\SPI1|Selector11~0_combout\ & (\SPI1|index_send\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Add2~0_combout\,
	datab => \SPI1|Selector11~0_combout\,
	datac => \SPI1|index_send\(3),
	datad => \SPI1|Selector12~2_combout\,
	combout => \SPI1|Selector10~0_combout\);

-- Location: FF_X18_Y17_N5
\SPI1|index_send[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector10~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_send\(3));

-- Location: LCCOMB_X18_Y17_N24
\SPI1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|LessThan0~0_combout\ = (\SPI1|index_send\(3)) # ((\SPI1|index_send\(2) & ((\SPI1|index_send\(1)) # (\SPI1|index_send\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_send\(1),
	datab => \SPI1|index_send\(2),
	datac => \SPI1|index_send\(3),
	datad => \SPI1|index_send\(0),
	combout => \SPI1|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y17_N28
\SPI1|Selector20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector20~0_combout\ = (\SPI1|state.S4~q\ & (((\START~input_o\ & !\SPI1|state.S0~q\)) # (!\SPI1|LessThan0~0_combout\))) # (!\SPI1|state.S4~q\ & (\START~input_o\ & (!\SPI1|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S4~q\,
	datab => \START~input_o\,
	datac => \SPI1|state.S0~q\,
	datad => \SPI1|LessThan0~0_combout\,
	combout => \SPI1|Selector20~0_combout\);

-- Location: FF_X19_Y17_N29
\SPI1|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector20~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S1~q\);

-- Location: LCCOMB_X19_Y17_N18
\SPI1|Selector21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector21~0_combout\ = (\SPI1|state.S1~q\) # ((\SPI1|state.S2~q\ & \SPI1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|state.S1~q\,
	datac => \SPI1|state.S2~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector21~0_combout\);

-- Location: FF_X19_Y17_N19
\SPI1|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector21~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S2~q\);

-- Location: FF_X19_Y17_N5
\SPI1|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \SPI1|state.S2~q\,
	clrn => \RST_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SPI1|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S3~q\);

-- Location: LCCOMB_X19_Y17_N12
\SPI1|Selector23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector23~0_combout\ = (\SPI1|state.S3~q\ & !\SPI1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|state.S3~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector23~0_combout\);

-- Location: FF_X19_Y17_N13
\SPI1|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector23~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S4~q\);

-- Location: LCCOMB_X19_Y17_N2
\SPI1|Selector24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector24~0_combout\ = (\SPI1|state.S4~q\ & ((\SPI1|LessThan0~0_combout\) # ((!\SPI1|LessThan1~0_combout\ & \SPI1|state.S7~q\)))) # (!\SPI1|state.S4~q\ & (((!\SPI1|LessThan1~0_combout\ & \SPI1|state.S7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S4~q\,
	datab => \SPI1|LessThan0~0_combout\,
	datac => \SPI1|LessThan1~0_combout\,
	datad => \SPI1|state.S7~q\,
	combout => \SPI1|Selector24~0_combout\);

-- Location: LCCOMB_X19_Y17_N8
\SPI1|Selector24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector24~1_combout\ = (\SPI1|Selector24~0_combout\) # ((\SPI1|state.S5~q\ & \SPI1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SPI1|Selector24~0_combout\,
	datac => \SPI1|state.S5~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector24~1_combout\);

-- Location: FF_X19_Y17_N9
\SPI1|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector24~1_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S5~q\);

-- Location: FF_X19_Y17_N7
\SPI1|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \SPI1|state.S5~q\,
	clrn => \RST_N~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SPI1|ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S6~q\);

-- Location: LCCOMB_X21_Y17_N22
\SPI1|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector17~0_combout\ = (\SPI1|state.S6~q\ & (\SPI1|Equal0~1_combout\ $ ((!\SPI1|index_resive\(0))))) # (!\SPI1|state.S6~q\ & (((\SPI1|index_resive\(0) & \SPI1|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S6~q\,
	datab => \SPI1|Equal0~1_combout\,
	datac => \SPI1|index_resive\(0),
	datad => \SPI1|state.S0~q\,
	combout => \SPI1|Selector17~0_combout\);

-- Location: FF_X21_Y17_N23
\SPI1|index_resive[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector17~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_resive\(0));

-- Location: LCCOMB_X21_Y17_N20
\SPI1|Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector15~0_combout\ = (\SPI1|state.S6~q\ & (\SPI1|Equal0~1_combout\)) # (!\SPI1|state.S6~q\ & ((\SPI1|state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S6~q\,
	datac => \SPI1|Equal0~1_combout\,
	datad => \SPI1|state.S0~q\,
	combout => \SPI1|Selector15~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\SPI1|Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector16~0_combout\ = (\SPI1|index_resive\(1) & ((\SPI1|Selector15~0_combout\) # ((!\SPI1|index_resive\(0) & \SPI1|Selector26~0_combout\)))) # (!\SPI1|index_resive\(1) & (\SPI1|index_resive\(0) & ((\SPI1|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_resive\(0),
	datab => \SPI1|Selector15~0_combout\,
	datac => \SPI1|index_resive\(1),
	datad => \SPI1|Selector26~0_combout\,
	combout => \SPI1|Selector16~0_combout\);

-- Location: FF_X21_Y17_N13
\SPI1|index_resive[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector16~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_resive\(1));

-- Location: LCCOMB_X21_Y17_N18
\SPI1|Add4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Add4~1_combout\ = \SPI1|index_resive\(2) $ (((\SPI1|index_resive\(1) & \SPI1|index_resive\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_resive\(1),
	datac => \SPI1|index_resive\(0),
	datad => \SPI1|index_resive\(2),
	combout => \SPI1|Add4~1_combout\);

-- Location: LCCOMB_X21_Y17_N2
\SPI1|Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector15~1_combout\ = (\SPI1|Selector26~0_combout\ & ((\SPI1|Add4~1_combout\) # ((\SPI1|index_resive\(2) & \SPI1|Selector15~0_combout\)))) # (!\SPI1|Selector26~0_combout\ & (((\SPI1|index_resive\(2) & \SPI1|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Selector26~0_combout\,
	datab => \SPI1|Add4~1_combout\,
	datac => \SPI1|index_resive\(2),
	datad => \SPI1|Selector15~0_combout\,
	combout => \SPI1|Selector15~1_combout\);

-- Location: FF_X21_Y17_N3
\SPI1|index_resive[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector15~1_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_resive\(2));

-- Location: LCCOMB_X21_Y17_N10
\SPI1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Add4~0_combout\ = \SPI1|index_resive\(3) $ (((\SPI1|index_resive\(1) & (\SPI1|index_resive\(2) & \SPI1|index_resive\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_resive\(1),
	datab => \SPI1|index_resive\(2),
	datac => \SPI1|index_resive\(0),
	datad => \SPI1|index_resive\(3),
	combout => \SPI1|Add4~0_combout\);

-- Location: LCCOMB_X21_Y17_N0
\SPI1|Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector14~0_combout\ = (\SPI1|Add4~0_combout\ & ((\SPI1|Selector26~0_combout\) # ((\SPI1|Selector15~0_combout\ & \SPI1|index_resive\(3))))) # (!\SPI1|Add4~0_combout\ & (\SPI1|Selector15~0_combout\ & (\SPI1|index_resive\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Add4~0_combout\,
	datab => \SPI1|Selector15~0_combout\,
	datac => \SPI1|index_resive\(3),
	datad => \SPI1|Selector26~0_combout\,
	combout => \SPI1|Selector14~0_combout\);

-- Location: FF_X21_Y17_N1
\SPI1|index_resive[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector14~0_combout\,
	ena => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|index_resive\(3));

-- Location: LCCOMB_X21_Y17_N4
\SPI1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|LessThan1~0_combout\ = (\SPI1|index_resive\(2) & (\SPI1|index_resive\(3) & ((\SPI1|index_resive\(1)) # (\SPI1|index_resive\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_resive\(1),
	datab => \SPI1|index_resive\(2),
	datac => \SPI1|index_resive\(0),
	datad => \SPI1|index_resive\(3),
	combout => \SPI1|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y17_N22
\SPI1|Selector27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector27~0_combout\ = (\SPI1|LessThan1~0_combout\ & \SPI1|state.S7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|LessThan1~0_combout\,
	datad => \SPI1|state.S7~q\,
	combout => \SPI1|Selector27~0_combout\);

-- Location: FF_X19_Y17_N23
\SPI1|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector27~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|state.S8~q\);

-- Location: LCCOMB_X19_Y17_N16
\SPI1|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector18~0_combout\ = (\SPI1|DONE~q\ & (((!\SPI1|state.S0~q\)) # (!\SPI1|state.S8~q\))) # (!\SPI1|DONE~q\ & (((\START~input_o\ & !\SPI1|state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S8~q\,
	datab => \START~input_o\,
	datac => \SPI1|DONE~q\,
	datad => \SPI1|state.S0~q\,
	combout => \SPI1|Selector18~0_combout\);

-- Location: FF_X19_Y17_N17
\SPI1|DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector18~0_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|DONE~q\);

-- Location: LCCOMB_X19_Y17_N26
\SPI1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector2~0_combout\ = (\SPI1|Equal0~1_combout\ & ((\SPI1|state.S6~q\) # (\SPI1|state.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S6~q\,
	datac => \SPI1|state.S3~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y17_N10
\SPI1|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector2~1_combout\ = (\SPI1|SPI_SCK~q\ & ((\SPI1|Selector2~0_combout\) # ((\SPI1|state.S5~q\) # (!\SPI1|wait_count[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Selector2~0_combout\,
	datab => \SPI1|wait_count[6]~7_combout\,
	datac => \SPI1|state.S5~q\,
	datad => \SPI1|SPI_SCK~q\,
	combout => \SPI1|Selector2~1_combout\);

-- Location: LCCOMB_X19_Y17_N20
\SPI1|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector2~2_combout\ = (\SPI1|Selector2~1_combout\) # ((!\SPI1|Equal0~1_combout\ & ((\SPI1|state.S2~q\) # (\SPI1|state.S5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Selector2~1_combout\,
	datab => \SPI1|state.S2~q\,
	datac => \SPI1|state.S5~q\,
	datad => \SPI1|Equal0~1_combout\,
	combout => \SPI1|Selector2~2_combout\);

-- Location: FF_X19_Y17_N21
\SPI1|SPI_SCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector2~2_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|SPI_SCK~q\);

-- Location: IOIBUF_X13_Y24_N22
\WDATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(2),
	o => \WDATA[2]~input_o\);

-- Location: LCCOMB_X18_Y17_N16
\SPI1|sreg[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|sreg[2]~feeder_combout\ = \WDATA[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WDATA[2]~input_o\,
	combout => \SPI1|sreg[2]~feeder_combout\);

-- Location: LCCOMB_X19_Y17_N30
\SPI1|sreg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|sreg[3]~0_combout\ = (\START~input_o\ & (!\SPI1|state.S0~q\ & \RST_N~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~input_o\,
	datac => \SPI1|state.S0~q\,
	datad => \RST_N~input_o\,
	combout => \SPI1|sreg[3]~0_combout\);

-- Location: FF_X18_Y17_N17
\SPI1|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|sreg[2]~feeder_combout\,
	ena => \SPI1|sreg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|sreg\(2));

-- Location: IOIBUF_X18_Y24_N15
\WDATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(1),
	o => \WDATA[1]~input_o\);

-- Location: FF_X18_Y17_N9
\SPI1|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WDATA[1]~input_o\,
	sload => VCC,
	ena => \SPI1|sreg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|sreg\(1));

-- Location: IOIBUF_X18_Y24_N22
\WDATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(3),
	o => \WDATA[3]~input_o\);

-- Location: LCCOMB_X18_Y17_N2
\SPI1|sreg[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|sreg[3]~feeder_combout\ = \WDATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WDATA[3]~input_o\,
	combout => \SPI1|sreg[3]~feeder_combout\);

-- Location: FF_X18_Y17_N3
\SPI1|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|sreg[3]~feeder_combout\,
	ena => \SPI1|sreg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|sreg\(3));

-- Location: IOIBUF_X16_Y24_N22
\WDATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WDATA(0),
	o => \WDATA[0]~input_o\);

-- Location: FF_X18_Y17_N7
\SPI1|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WDATA[0]~input_o\,
	sload => VCC,
	ena => \SPI1|sreg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|sreg\(0));

-- Location: LCCOMB_X18_Y17_N6
\SPI1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Mux0~0_combout\ = (\SPI1|index_send\(1) & (((\SPI1|index_send\(0))))) # (!\SPI1|index_send\(1) & ((\SPI1|index_send\(0) & (\SPI1|sreg\(3))) # (!\SPI1|index_send\(0) & ((\SPI1|sreg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_send\(1),
	datab => \SPI1|sreg\(3),
	datac => \SPI1|sreg\(0),
	datad => \SPI1|index_send\(0),
	combout => \SPI1|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y17_N8
\SPI1|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Mux0~1_combout\ = (\SPI1|index_send\(1) & ((\SPI1|Mux0~0_combout\ & ((\SPI1|sreg\(1)))) # (!\SPI1|Mux0~0_combout\ & (\SPI1|sreg\(2))))) # (!\SPI1|index_send\(1) & (((\SPI1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|index_send\(1),
	datab => \SPI1|sreg\(2),
	datac => \SPI1|sreg\(1),
	datad => \SPI1|Mux0~0_combout\,
	combout => \SPI1|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y17_N2
\SPI1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector1~0_combout\ = (\SPI1|state.S0~q\ & (!\SPI1|SPI_MOSI~q\ & !\SPI1|state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S0~q\,
	datab => \SPI1|SPI_MOSI~q\,
	datad => \SPI1|state.S1~q\,
	combout => \SPI1|Selector1~0_combout\);

-- Location: LCCOMB_X23_Y17_N0
\SPI1|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector1~1_combout\ = (!\SPI1|state.S8~q\ & (!\SPI1|Selector1~0_combout\ & ((!\SPI1|state.S1~q\) # (!\SPI1|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|Mux0~1_combout\,
	datab => \SPI1|state.S1~q\,
	datac => \SPI1|state.S8~q\,
	datad => \SPI1|Selector1~0_combout\,
	combout => \SPI1|Selector1~1_combout\);

-- Location: FF_X23_Y17_N1
\SPI1|SPI_MOSI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SPI1|Selector1~1_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|SPI_MOSI~q\);

-- Location: IOIBUF_X23_Y24_N1
\HOLD_SS_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HOLD_SS_N,
	o => \HOLD_SS_N~input_o\);

-- Location: LCCOMB_X23_Y17_N10
\SPI1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector0~0_combout\ = (\SPI1|state.S0~q\ & (!\SPI1|SPI_SS_N~q\ & ((!\SPI1|state.S1~q\)))) # (!\SPI1|state.S0~q\ & (((\HOLD_SS_N~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SPI1|state.S0~q\,
	datab => \SPI1|SPI_SS_N~q\,
	datac => \HOLD_SS_N~input_o\,
	datad => \SPI1|state.S1~q\,
	combout => \SPI1|Selector0~0_combout\);

-- Location: LCCOMB_X23_Y17_N6
\SPI1|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SPI1|Selector0~1_combout\ = (!\SPI1|state.S8~q\ & !\SPI1|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SPI1|state.S8~q\,
	datad => \SPI1|Selector0~0_combout\,
	combout => \SPI1|Selector0~1_combout\);

-- Location: FF_X24_Y17_N15
\SPI1|SPI_SS_N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \SPI1|Selector0~1_combout\,
	clrn => \RST_N~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SPI1|SPI_SS_N~q\);

-- Location: FF_X24_Y17_N17
\Check1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \SPI1|SPI_SS_N~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|state~q\);

-- Location: LCCOMB_X24_Y17_N0
\Check1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~0_combout\ = (\Check1|tmp\(0) & (\SPI1|SPI_SS_N~q\ $ (GND))) # (!\Check1|tmp\(0) & (!\SPI1|SPI_SS_N~q\ & VCC))
-- \Check1|Add0~1\ = CARRY((\Check1|tmp\(0) & !\SPI1|SPI_SS_N~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(0),
	datab => \SPI1|SPI_SS_N~q\,
	datad => VCC,
	combout => \Check1|Add0~0_combout\,
	cout => \Check1|Add0~1\);

-- Location: LCCOMB_X25_Y17_N12
\Check1|tmp[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[0]~4_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~0_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|tmp\(0),
	datac => \Check1|Add0~0_combout\,
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[0]~4_combout\);

-- Location: FF_X24_Y17_N19
\Check1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Check1|tmp[0]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(0));

-- Location: LCCOMB_X24_Y17_N2
\Check1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~2_combout\ = (\Check1|tmp\(1) & (!\Check1|Add0~1\)) # (!\Check1|tmp\(1) & ((\Check1|Add0~1\) # (GND)))
-- \Check1|Add0~3\ = CARRY((!\Check1|Add0~1\) # (!\Check1|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(1),
	datad => VCC,
	cin => \Check1|Add0~1\,
	combout => \Check1|Add0~2_combout\,
	cout => \Check1|Add0~3\);

-- Location: LCCOMB_X25_Y17_N10
\Check1|tmp[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[1]~3_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~2_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(1),
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|state~q\,
	datad => \Check1|Add0~2_combout\,
	combout => \Check1|tmp[1]~3_combout\);

-- Location: FF_X24_Y17_N9
\Check1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Check1|tmp[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(1));

-- Location: LCCOMB_X24_Y17_N4
\Check1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~4_combout\ = (\Check1|tmp\(2) & (\Check1|Add0~3\ $ (GND))) # (!\Check1|tmp\(2) & (!\Check1|Add0~3\ & VCC))
-- \Check1|Add0~5\ = CARRY((\Check1|tmp\(2) & !\Check1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(2),
	datad => VCC,
	cin => \Check1|Add0~3\,
	combout => \Check1|Add0~4_combout\,
	cout => \Check1|Add0~5\);

-- Location: LCCOMB_X25_Y17_N4
\Check1|tmp[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[2]~2_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~4_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~4_combout\,
	datac => \Check1|tmp\(2),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[2]~2_combout\);

-- Location: FF_X25_Y17_N5
\Check1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(2));

-- Location: LCCOMB_X24_Y17_N6
\Check1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~6_combout\ = (\Check1|tmp\(3) & (!\Check1|Add0~5\)) # (!\Check1|tmp\(3) & ((\Check1|Add0~5\) # (GND)))
-- \Check1|Add0~7\ = CARRY((!\Check1|Add0~5\) # (!\Check1|tmp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(3),
	datad => VCC,
	cin => \Check1|Add0~5\,
	combout => \Check1|Add0~6_combout\,
	cout => \Check1|Add0~7\);

-- Location: LCCOMB_X25_Y17_N2
\Check1|tmp[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[3]~1_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~6_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~6_combout\,
	datac => \Check1|tmp\(3),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[3]~1_combout\);

-- Location: FF_X25_Y17_N3
\Check1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(3));

-- Location: LCCOMB_X24_Y17_N8
\Check1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~8_combout\ = (\Check1|tmp\(4) & (\Check1|Add0~7\ $ (GND))) # (!\Check1|tmp\(4) & (!\Check1|Add0~7\ & VCC))
-- \Check1|Add0~9\ = CARRY((\Check1|tmp\(4) & !\Check1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(4),
	datad => VCC,
	cin => \Check1|Add0~7\,
	combout => \Check1|Add0~8_combout\,
	cout => \Check1|Add0~9\);

-- Location: LCCOMB_X25_Y17_N24
\Check1|tmp[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[4]~0_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~8_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~8_combout\,
	datac => \Check1|tmp\(4),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[4]~0_combout\);

-- Location: FF_X25_Y17_N25
\Check1|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(4));

-- Location: LCCOMB_X24_Y17_N10
\Check1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~10_combout\ = (\Check1|tmp\(5) & (!\Check1|Add0~9\)) # (!\Check1|tmp\(5) & ((\Check1|Add0~9\) # (GND)))
-- \Check1|Add0~11\ = CARRY((!\Check1|Add0~9\) # (!\Check1|tmp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(5),
	datad => VCC,
	cin => \Check1|Add0~9\,
	combout => \Check1|Add0~10_combout\,
	cout => \Check1|Add0~11\);

-- Location: LCCOMB_X25_Y17_N20
\Check1|tmp[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[5]~5_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~10_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(5),
	datad => \Check1|Add0~10_combout\,
	combout => \Check1|tmp[5]~5_combout\);

-- Location: FF_X25_Y17_N21
\Check1|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(5));

-- Location: LCCOMB_X24_Y17_N12
\Check1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~12_combout\ = (\Check1|tmp\(6) & (\Check1|Add0~11\ $ (GND))) # (!\Check1|tmp\(6) & (!\Check1|Add0~11\ & VCC))
-- \Check1|Add0~13\ = CARRY((\Check1|tmp\(6) & !\Check1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(6),
	datad => VCC,
	cin => \Check1|Add0~11\,
	combout => \Check1|Add0~12_combout\,
	cout => \Check1|Add0~13\);

-- Location: LCCOMB_X25_Y17_N14
\Check1|tmp[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[6]~6_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~12_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(6),
	datad => \Check1|Add0~12_combout\,
	combout => \Check1|tmp[6]~6_combout\);

-- Location: FF_X25_Y17_N15
\Check1|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(6));

-- Location: LCCOMB_X24_Y17_N14
\Check1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~14_combout\ = (\Check1|tmp\(7) & (!\Check1|Add0~13\)) # (!\Check1|tmp\(7) & ((\Check1|Add0~13\) # (GND)))
-- \Check1|Add0~15\ = CARRY((!\Check1|Add0~13\) # (!\Check1|tmp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(7),
	datad => VCC,
	cin => \Check1|Add0~13\,
	combout => \Check1|Add0~14_combout\,
	cout => \Check1|Add0~15\);

-- Location: LCCOMB_X25_Y17_N0
\Check1|tmp[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[7]~7_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~14_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(7),
	datad => \Check1|Add0~14_combout\,
	combout => \Check1|tmp[7]~7_combout\);

-- Location: FF_X25_Y17_N1
\Check1|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(7));

-- Location: LCCOMB_X24_Y17_N16
\Check1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~16_combout\ = (\Check1|tmp\(8) & (\Check1|Add0~15\ $ (GND))) # (!\Check1|tmp\(8) & (!\Check1|Add0~15\ & VCC))
-- \Check1|Add0~17\ = CARRY((\Check1|tmp\(8) & !\Check1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(8),
	datad => VCC,
	cin => \Check1|Add0~15\,
	combout => \Check1|Add0~16_combout\,
	cout => \Check1|Add0~17\);

-- Location: LCCOMB_X25_Y17_N16
\Check1|tmp[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[8]~8_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~16_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(8),
	datad => \Check1|Add0~16_combout\,
	combout => \Check1|tmp[8]~8_combout\);

-- Location: FF_X25_Y17_N17
\Check1|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(8));

-- Location: LCCOMB_X24_Y17_N18
\Check1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~18_combout\ = (\Check1|tmp\(9) & (!\Check1|Add0~17\)) # (!\Check1|tmp\(9) & ((\Check1|Add0~17\) # (GND)))
-- \Check1|Add0~19\ = CARRY((!\Check1|Add0~17\) # (!\Check1|tmp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(9),
	datad => VCC,
	cin => \Check1|Add0~17\,
	combout => \Check1|Add0~18_combout\,
	cout => \Check1|Add0~19\);

-- Location: LCCOMB_X25_Y17_N22
\Check1|tmp[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[9]~9_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~18_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~18_combout\,
	datac => \Check1|tmp\(9),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[9]~9_combout\);

-- Location: FF_X25_Y17_N23
\Check1|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(9));

-- Location: LCCOMB_X24_Y17_N20
\Check1|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~20_combout\ = (\Check1|tmp\(10) & (\Check1|Add0~19\ $ (GND))) # (!\Check1|tmp\(10) & (!\Check1|Add0~19\ & VCC))
-- \Check1|Add0~21\ = CARRY((\Check1|tmp\(10) & !\Check1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(10),
	datad => VCC,
	cin => \Check1|Add0~19\,
	combout => \Check1|Add0~20_combout\,
	cout => \Check1|Add0~21\);

-- Location: LCCOMB_X25_Y17_N8
\Check1|tmp[10]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[10]~10_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~20_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~20_combout\,
	datac => \Check1|tmp\(10),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[10]~10_combout\);

-- Location: FF_X25_Y17_N9
\Check1|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(10));

-- Location: LCCOMB_X24_Y17_N22
\Check1|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~22_combout\ = (\Check1|tmp\(11) & (!\Check1|Add0~21\)) # (!\Check1|tmp\(11) & ((\Check1|Add0~21\) # (GND)))
-- \Check1|Add0~23\ = CARRY((!\Check1|Add0~21\) # (!\Check1|tmp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(11),
	datad => VCC,
	cin => \Check1|Add0~21\,
	combout => \Check1|Add0~22_combout\,
	cout => \Check1|Add0~23\);

-- Location: LCCOMB_X25_Y17_N6
\Check1|tmp[11]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[11]~11_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~22_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~22_combout\,
	datac => \Check1|tmp\(11),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[11]~11_combout\);

-- Location: FF_X25_Y17_N7
\Check1|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(11));

-- Location: LCCOMB_X24_Y17_N24
\Check1|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~24_combout\ = (\Check1|tmp\(12) & (\Check1|Add0~23\ $ (GND))) # (!\Check1|tmp\(12) & (!\Check1|Add0~23\ & VCC))
-- \Check1|Add0~25\ = CARRY((\Check1|tmp\(12) & !\Check1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(12),
	datad => VCC,
	cin => \Check1|Add0~23\,
	combout => \Check1|Add0~24_combout\,
	cout => \Check1|Add0~25\);

-- Location: LCCOMB_X23_Y16_N8
\Check1|tmp[12]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[12]~12_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~24_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(12),
	datad => \Check1|Add0~24_combout\,
	combout => \Check1|tmp[12]~12_combout\);

-- Location: FF_X23_Y16_N9
\Check1|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(12));

-- Location: LCCOMB_X24_Y17_N26
\Check1|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~26_combout\ = (\Check1|tmp\(13) & (!\Check1|Add0~25\)) # (!\Check1|tmp\(13) & ((\Check1|Add0~25\) # (GND)))
-- \Check1|Add0~27\ = CARRY((!\Check1|Add0~25\) # (!\Check1|tmp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(13),
	datad => VCC,
	cin => \Check1|Add0~25\,
	combout => \Check1|Add0~26_combout\,
	cout => \Check1|Add0~27\);

-- Location: LCCOMB_X23_Y16_N14
\Check1|tmp[13]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[13]~13_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~26_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|Add0~26_combout\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(13),
	datad => \Check1|state~q\,
	combout => \Check1|tmp[13]~13_combout\);

-- Location: FF_X23_Y16_N15
\Check1|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(13));

-- Location: LCCOMB_X24_Y17_N28
\Check1|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~28_combout\ = (\Check1|tmp\(14) & (\Check1|Add0~27\ $ (GND))) # (!\Check1|tmp\(14) & (!\Check1|Add0~27\ & VCC))
-- \Check1|Add0~29\ = CARRY((\Check1|tmp\(14) & !\Check1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(14),
	datad => VCC,
	cin => \Check1|Add0~27\,
	combout => \Check1|Add0~28_combout\,
	cout => \Check1|Add0~29\);

-- Location: LCCOMB_X23_Y16_N0
\Check1|tmp[14]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[14]~14_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~28_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(14),
	datad => \Check1|Add0~28_combout\,
	combout => \Check1|tmp[14]~14_combout\);

-- Location: FF_X23_Y16_N1
\Check1|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(14));

-- Location: LCCOMB_X24_Y17_N30
\Check1|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~30_combout\ = (\Check1|tmp\(15) & (!\Check1|Add0~29\)) # (!\Check1|tmp\(15) & ((\Check1|Add0~29\) # (GND)))
-- \Check1|Add0~31\ = CARRY((!\Check1|Add0~29\) # (!\Check1|tmp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(15),
	datad => VCC,
	cin => \Check1|Add0~29\,
	combout => \Check1|Add0~30_combout\,
	cout => \Check1|Add0~31\);

-- Location: LCCOMB_X23_Y16_N6
\Check1|tmp[15]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[15]~15_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~30_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(15),
	datad => \Check1|Add0~30_combout\,
	combout => \Check1|tmp[15]~15_combout\);

-- Location: FF_X23_Y16_N7
\Check1|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(15));

-- Location: LCCOMB_X24_Y16_N0
\Check1|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~32_combout\ = (\Check1|tmp\(16) & (\Check1|Add0~31\ $ (GND))) # (!\Check1|tmp\(16) & (!\Check1|Add0~31\ & VCC))
-- \Check1|Add0~33\ = CARRY((\Check1|tmp\(16) & !\Check1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(16),
	datad => VCC,
	cin => \Check1|Add0~31\,
	combout => \Check1|Add0~32_combout\,
	cout => \Check1|Add0~33\);

-- Location: LCCOMB_X25_Y16_N4
\Check1|tmp[16]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[16]~16_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~32_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(16),
	datad => \Check1|Add0~32_combout\,
	combout => \Check1|tmp[16]~16_combout\);

-- Location: FF_X25_Y16_N5
\Check1|tmp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(16));

-- Location: LCCOMB_X24_Y16_N2
\Check1|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~34_combout\ = (\Check1|tmp\(17) & (!\Check1|Add0~33\)) # (!\Check1|tmp\(17) & ((\Check1|Add0~33\) # (GND)))
-- \Check1|Add0~35\ = CARRY((!\Check1|Add0~33\) # (!\Check1|tmp\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(17),
	datad => VCC,
	cin => \Check1|Add0~33\,
	combout => \Check1|Add0~34_combout\,
	cout => \Check1|Add0~35\);

-- Location: LCCOMB_X25_Y16_N6
\Check1|tmp[17]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[17]~17_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~34_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(17),
	datad => \Check1|Add0~34_combout\,
	combout => \Check1|tmp[17]~17_combout\);

-- Location: FF_X25_Y16_N7
\Check1|tmp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(17));

-- Location: LCCOMB_X24_Y16_N4
\Check1|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~36_combout\ = (\Check1|tmp\(18) & (\Check1|Add0~35\ $ (GND))) # (!\Check1|tmp\(18) & (!\Check1|Add0~35\ & VCC))
-- \Check1|Add0~37\ = CARRY((\Check1|tmp\(18) & !\Check1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(18),
	datad => VCC,
	cin => \Check1|Add0~35\,
	combout => \Check1|Add0~36_combout\,
	cout => \Check1|Add0~37\);

-- Location: LCCOMB_X25_Y16_N12
\Check1|tmp[18]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[18]~18_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~36_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~36_combout\,
	datac => \Check1|tmp\(18),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[18]~18_combout\);

-- Location: FF_X25_Y16_N13
\Check1|tmp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(18));

-- Location: LCCOMB_X24_Y16_N6
\Check1|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~38_combout\ = (\Check1|tmp\(19) & (!\Check1|Add0~37\)) # (!\Check1|tmp\(19) & ((\Check1|Add0~37\) # (GND)))
-- \Check1|Add0~39\ = CARRY((!\Check1|Add0~37\) # (!\Check1|tmp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(19),
	datad => VCC,
	cin => \Check1|Add0~37\,
	combout => \Check1|Add0~38_combout\,
	cout => \Check1|Add0~39\);

-- Location: LCCOMB_X25_Y16_N2
\Check1|tmp[19]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[19]~19_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & (\Check1|Add0~38_combout\)) # (!\Check1|state~q\ & ((\Check1|tmp\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Add0~38_combout\,
	datac => \Check1|tmp\(19),
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|tmp[19]~19_combout\);

-- Location: FF_X25_Y16_N3
\Check1|tmp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(19));

-- Location: LCCOMB_X24_Y16_N8
\Check1|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~40_combout\ = (\Check1|tmp\(20) & (\Check1|Add0~39\ $ (GND))) # (!\Check1|tmp\(20) & (!\Check1|Add0~39\ & VCC))
-- \Check1|Add0~41\ = CARRY((\Check1|tmp\(20) & !\Check1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(20),
	datad => VCC,
	cin => \Check1|Add0~39\,
	combout => \Check1|Add0~40_combout\,
	cout => \Check1|Add0~41\);

-- Location: LCCOMB_X25_Y16_N22
\Check1|tmp[20]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[20]~20_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~40_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(20),
	datad => \Check1|Add0~40_combout\,
	combout => \Check1|tmp[20]~20_combout\);

-- Location: FF_X25_Y16_N23
\Check1|tmp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(20));

-- Location: LCCOMB_X24_Y16_N10
\Check1|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~42_combout\ = (\Check1|tmp\(21) & (!\Check1|Add0~41\)) # (!\Check1|tmp\(21) & ((\Check1|Add0~41\) # (GND)))
-- \Check1|Add0~43\ = CARRY((!\Check1|Add0~41\) # (!\Check1|tmp\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(21),
	datad => VCC,
	cin => \Check1|Add0~41\,
	combout => \Check1|Add0~42_combout\,
	cout => \Check1|Add0~43\);

-- Location: LCCOMB_X25_Y16_N28
\Check1|tmp[21]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[21]~21_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~42_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(21),
	datad => \Check1|Add0~42_combout\,
	combout => \Check1|tmp[21]~21_combout\);

-- Location: FF_X25_Y16_N29
\Check1|tmp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(21));

-- Location: LCCOMB_X24_Y16_N12
\Check1|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~44_combout\ = (\Check1|tmp\(22) & (\Check1|Add0~43\ $ (GND))) # (!\Check1|tmp\(22) & (!\Check1|Add0~43\ & VCC))
-- \Check1|Add0~45\ = CARRY((\Check1|tmp\(22) & !\Check1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(22),
	datad => VCC,
	cin => \Check1|Add0~43\,
	combout => \Check1|Add0~44_combout\,
	cout => \Check1|Add0~45\);

-- Location: LCCOMB_X25_Y16_N30
\Check1|tmp[22]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[22]~22_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~44_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(22),
	datad => \Check1|Add0~44_combout\,
	combout => \Check1|tmp[22]~22_combout\);

-- Location: FF_X25_Y16_N31
\Check1|tmp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(22));

-- Location: LCCOMB_X24_Y16_N14
\Check1|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~46_combout\ = (\Check1|tmp\(23) & (!\Check1|Add0~45\)) # (!\Check1|tmp\(23) & ((\Check1|Add0~45\) # (GND)))
-- \Check1|Add0~47\ = CARRY((!\Check1|Add0~45\) # (!\Check1|tmp\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(23),
	datad => VCC,
	cin => \Check1|Add0~45\,
	combout => \Check1|Add0~46_combout\,
	cout => \Check1|Add0~47\);

-- Location: LCCOMB_X25_Y16_N24
\Check1|tmp[23]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[23]~23_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~46_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(23),
	datad => \Check1|Add0~46_combout\,
	combout => \Check1|tmp[23]~23_combout\);

-- Location: FF_X25_Y16_N25
\Check1|tmp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(23));

-- Location: LCCOMB_X25_Y16_N26
\Check1|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~6_combout\ = (!\Check1|tmp\(22) & (!\Check1|tmp\(23) & (!\Check1|tmp\(20) & !\Check1|tmp\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(22),
	datab => \Check1|tmp\(23),
	datac => \Check1|tmp\(20),
	datad => \Check1|tmp\(21),
	combout => \Check1|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Check1|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~5_combout\ = (!\Check1|tmp\(18) & (!\Check1|tmp\(19) & (!\Check1|tmp\(16) & !\Check1|tmp\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(18),
	datab => \Check1|tmp\(19),
	datac => \Check1|tmp\(16),
	datad => \Check1|tmp\(17),
	combout => \Check1|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y16_N16
\Check1|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~48_combout\ = (\Check1|tmp\(24) & (\Check1|Add0~47\ $ (GND))) # (!\Check1|tmp\(24) & (!\Check1|Add0~47\ & VCC))
-- \Check1|Add0~49\ = CARRY((\Check1|tmp\(24) & !\Check1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(24),
	datad => VCC,
	cin => \Check1|Add0~47\,
	combout => \Check1|Add0~48_combout\,
	cout => \Check1|Add0~49\);

-- Location: LCCOMB_X23_Y16_N18
\Check1|tmp[24]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[24]~24_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~48_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(24),
	datad => \Check1|Add0~48_combout\,
	combout => \Check1|tmp[24]~24_combout\);

-- Location: FF_X23_Y16_N19
\Check1|tmp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(24));

-- Location: LCCOMB_X24_Y16_N18
\Check1|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~50_combout\ = (\Check1|tmp\(25) & (!\Check1|Add0~49\)) # (!\Check1|tmp\(25) & ((\Check1|Add0~49\) # (GND)))
-- \Check1|Add0~51\ = CARRY((!\Check1|Add0~49\) # (!\Check1|tmp\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(25),
	datad => VCC,
	cin => \Check1|Add0~49\,
	combout => \Check1|Add0~50_combout\,
	cout => \Check1|Add0~51\);

-- Location: LCCOMB_X23_Y16_N12
\Check1|tmp[25]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[25]~25_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~50_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(25),
	datad => \Check1|Add0~50_combout\,
	combout => \Check1|tmp[25]~25_combout\);

-- Location: FF_X23_Y16_N13
\Check1|tmp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(25));

-- Location: LCCOMB_X24_Y16_N20
\Check1|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~52_combout\ = (\Check1|tmp\(26) & (\Check1|Add0~51\ $ (GND))) # (!\Check1|tmp\(26) & (!\Check1|Add0~51\ & VCC))
-- \Check1|Add0~53\ = CARRY((\Check1|tmp\(26) & !\Check1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(26),
	datad => VCC,
	cin => \Check1|Add0~51\,
	combout => \Check1|Add0~52_combout\,
	cout => \Check1|Add0~53\);

-- Location: LCCOMB_X23_Y16_N2
\Check1|tmp[26]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[26]~26_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~52_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(26),
	datad => \Check1|Add0~52_combout\,
	combout => \Check1|tmp[26]~26_combout\);

-- Location: FF_X23_Y16_N3
\Check1|tmp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(26));

-- Location: LCCOMB_X24_Y16_N22
\Check1|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~54_combout\ = (\Check1|tmp\(27) & (!\Check1|Add0~53\)) # (!\Check1|tmp\(27) & ((\Check1|Add0~53\) # (GND)))
-- \Check1|Add0~55\ = CARRY((!\Check1|Add0~53\) # (!\Check1|tmp\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(27),
	datad => VCC,
	cin => \Check1|Add0~53\,
	combout => \Check1|Add0~54_combout\,
	cout => \Check1|Add0~55\);

-- Location: LCCOMB_X23_Y16_N4
\Check1|tmp[27]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[27]~27_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~54_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(27),
	datad => \Check1|Add0~54_combout\,
	combout => \Check1|tmp[27]~27_combout\);

-- Location: FF_X23_Y16_N5
\Check1|tmp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(27));

-- Location: LCCOMB_X24_Y16_N24
\Check1|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~56_combout\ = (\Check1|tmp\(28) & (\Check1|Add0~55\ $ (GND))) # (!\Check1|tmp\(28) & (!\Check1|Add0~55\ & VCC))
-- \Check1|Add0~57\ = CARRY((\Check1|tmp\(28) & !\Check1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(28),
	datad => VCC,
	cin => \Check1|Add0~55\,
	combout => \Check1|Add0~56_combout\,
	cout => \Check1|Add0~57\);

-- Location: LCCOMB_X23_Y16_N20
\Check1|tmp[28]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[28]~28_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~56_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(28),
	datad => \Check1|Add0~56_combout\,
	combout => \Check1|tmp[28]~28_combout\);

-- Location: FF_X23_Y16_N21
\Check1|tmp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(28));

-- Location: LCCOMB_X24_Y16_N26
\Check1|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~58_combout\ = (\Check1|tmp\(29) & (!\Check1|Add0~57\)) # (!\Check1|tmp\(29) & ((\Check1|Add0~57\) # (GND)))
-- \Check1|Add0~59\ = CARRY((!\Check1|Add0~57\) # (!\Check1|tmp\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Check1|tmp\(29),
	datad => VCC,
	cin => \Check1|Add0~57\,
	combout => \Check1|Add0~58_combout\,
	cout => \Check1|Add0~59\);

-- Location: LCCOMB_X23_Y16_N22
\Check1|tmp[29]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[29]~29_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~58_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(29),
	datad => \Check1|Add0~58_combout\,
	combout => \Check1|tmp[29]~29_combout\);

-- Location: FF_X23_Y16_N23
\Check1|tmp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(29));

-- Location: LCCOMB_X24_Y16_N28
\Check1|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~60_combout\ = (\Check1|tmp\(30) & (\Check1|Add0~59\ $ (GND))) # (!\Check1|tmp\(30) & (!\Check1|Add0~59\ & VCC))
-- \Check1|Add0~61\ = CARRY((\Check1|tmp\(30) & !\Check1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(30),
	datad => VCC,
	cin => \Check1|Add0~59\,
	combout => \Check1|Add0~60_combout\,
	cout => \Check1|Add0~61\);

-- Location: LCCOMB_X23_Y16_N10
\Check1|tmp[30]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[30]~30_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~60_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(30),
	datad => \Check1|Add0~60_combout\,
	combout => \Check1|tmp[30]~30_combout\);

-- Location: FF_X23_Y16_N11
\Check1|tmp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(30));

-- Location: LCCOMB_X24_Y16_N30
\Check1|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Add0~62_combout\ = \Check1|Add0~61\ $ (\Check1|tmp\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Check1|tmp\(31),
	cin => \Check1|Add0~61\,
	combout => \Check1|Add0~62_combout\);

-- Location: LCCOMB_X23_Y16_N24
\Check1|tmp[31]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|tmp[31]~31_combout\ = (!\Check1|Equal0~10_combout\ & ((\Check1|state~q\ & ((\Check1|Add0~62_combout\))) # (!\Check1|state~q\ & (\Check1|tmp\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|state~q\,
	datab => \Check1|Equal0~10_combout\,
	datac => \Check1|tmp\(31),
	datad => \Check1|Add0~62_combout\,
	combout => \Check1|tmp[31]~31_combout\);

-- Location: FF_X23_Y16_N25
\Check1|tmp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|tmp[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|tmp\(31));

-- Location: LCCOMB_X23_Y16_N30
\Check1|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~7_combout\ = (!\Check1|tmp\(25) & (!\Check1|tmp\(26) & (!\Check1|tmp\(27) & !\Check1|tmp\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(25),
	datab => \Check1|tmp\(26),
	datac => \Check1|tmp\(27),
	datad => \Check1|tmp\(24),
	combout => \Check1|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y16_N16
\Check1|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~8_combout\ = (!\Check1|tmp\(29) & !\Check1|tmp\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Check1|tmp\(29),
	datad => \Check1|tmp\(28),
	combout => \Check1|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y16_N26
\Check1|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~9_combout\ = (!\Check1|tmp\(30) & (!\Check1|tmp\(31) & (\Check1|Equal0~7_combout\ & \Check1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(30),
	datab => \Check1|tmp\(31),
	datac => \Check1|Equal0~7_combout\,
	datad => \Check1|Equal0~8_combout\,
	combout => \Check1|Equal0~9_combout\);

-- Location: LCCOMB_X25_Y17_N28
\Check1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~2_combout\ = (!\Check1|tmp\(9) & (!\Check1|tmp\(8) & (!\Check1|tmp\(10) & !\Check1|tmp\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(9),
	datab => \Check1|tmp\(8),
	datac => \Check1|tmp\(10),
	datad => \Check1|tmp\(11),
	combout => \Check1|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y16_N28
\Check1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~3_combout\ = (!\Check1|tmp\(15) & (!\Check1|tmp\(12) & (!\Check1|tmp\(13) & !\Check1|tmp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(15),
	datab => \Check1|tmp\(12),
	datac => \Check1|tmp\(13),
	datad => \Check1|tmp\(14),
	combout => \Check1|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Check1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~0_combout\ = (!\Check1|tmp\(1) & (!\Check1|tmp\(4) & (!\Check1|tmp\(2) & !\Check1|tmp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(1),
	datab => \Check1|tmp\(4),
	datac => \Check1|tmp\(2),
	datad => \Check1|tmp\(3),
	combout => \Check1|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\Check1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~1_combout\ = (!\Check1|tmp\(5) & (!\Check1|tmp\(7) & (!\Check1|tmp\(6) & \Check1|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|tmp\(5),
	datab => \Check1|tmp\(7),
	datac => \Check1|tmp\(6),
	datad => \Check1|tmp\(0),
	combout => \Check1|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y16_N18
\Check1|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~4_combout\ = (\Check1|Equal0~2_combout\ & (\Check1|Equal0~3_combout\ & (\Check1|Equal0~0_combout\ & \Check1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|Equal0~2_combout\,
	datab => \Check1|Equal0~3_combout\,
	datac => \Check1|Equal0~0_combout\,
	datad => \Check1|Equal0~1_combout\,
	combout => \Check1|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y16_N0
\Check1|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|Equal0~10_combout\ = (\Check1|Equal0~6_combout\ & (\Check1|Equal0~5_combout\ & (\Check1|Equal0~9_combout\ & \Check1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Check1|Equal0~6_combout\,
	datab => \Check1|Equal0~5_combout\,
	datac => \Check1|Equal0~9_combout\,
	datad => \Check1|Equal0~4_combout\,
	combout => \Check1|Equal0~10_combout\);

-- Location: LCCOMB_X25_Y16_N20
\Check1|outputx~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Check1|outputx~feeder_combout\ = \Check1|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Check1|Equal0~10_combout\,
	combout => \Check1|outputx~feeder_combout\);

-- Location: FF_X25_Y16_N21
\Check1|outputx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Check1|outputx~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Check1|outputx~q\);

-- Location: LCCOMB_X21_Y18_N4
\TX1|baudrate_counter[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[0]~5_combout\ = (\TX1|state.WAIT_FOR_REQ~q\ & ((\TX1|baudrate_counter\(0) $ (\TX1|baudrate_counter[0]~0_combout\)))) # (!\TX1|state.WAIT_FOR_REQ~q\ & ((\TX1|baudrate_counter\(0)) # ((\Check1|outputx~q\ & 
-- \TX1|baudrate_counter[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state.WAIT_FOR_REQ~q\,
	datab => \Check1|outputx~q\,
	datac => \TX1|baudrate_counter\(0),
	datad => \TX1|baudrate_counter[0]~0_combout\,
	combout => \TX1|baudrate_counter[0]~5_combout\);

-- Location: FF_X21_Y18_N5
\TX1|baudrate_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|baudrate_counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|baudrate_counter\(0));

-- Location: LCCOMB_X21_Y18_N16
\TX1|state~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~13_combout\ = (\Check1|outputx~q\ & !\TX1|state.WAIT_FOR_REQ~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Check1|outputx~q\,
	datad => \TX1|state.WAIT_FOR_REQ~q\,
	combout => \TX1|state~13_combout\);

-- Location: LCCOMB_X22_Y18_N4
\TX1|state~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~18_combout\ = (\TX1|state.SEND_START_BIT~q\) # (\TX1|state.SEND_STOP_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX1|state.SEND_START_BIT~q\,
	datad => \TX1|state.SEND_STOP_BIT~q\,
	combout => \TX1|state~18_combout\);

-- Location: LCCOMB_X22_Y18_N24
\TX1|bit_counter[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[3]~6_combout\ = (\TX1|bit_counter[0]~2_combout\ & ((\TX1|Equal1~0_combout\ $ (\TX1|bit_counter\(3))) # (!\TX1|state.SEND_BITS~q\))) # (!\TX1|bit_counter[0]~2_combout\ & (((\TX1|bit_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|Equal1~0_combout\,
	datab => \TX1|state.SEND_BITS~q\,
	datac => \TX1|bit_counter\(3),
	datad => \TX1|bit_counter[0]~2_combout\,
	combout => \TX1|bit_counter[3]~6_combout\);

-- Location: FF_X22_Y18_N25
\TX1|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|bit_counter[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|bit_counter\(3));

-- Location: LCCOMB_X22_Y18_N18
\TX1|bit_counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[0]~1_combout\ = (\TX1|Equal0~0_combout\ & (\TX1|state.SEND_BITS~q\ & ((\TX1|bit_counter\(3)) # (!\TX1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|Equal1~0_combout\,
	datab => \TX1|Equal0~0_combout\,
	datac => \TX1|state.SEND_BITS~q\,
	datad => \TX1|bit_counter\(3),
	combout => \TX1|bit_counter[0]~1_combout\);

-- Location: LCCOMB_X22_Y18_N28
\TX1|bit_counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[0]~2_combout\ = (\RST_N~input_o\ & ((\TX1|state~12_combout\) # (\TX1|bit_counter[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~12_combout\,
	datac => \RST_N~input_o\,
	datad => \TX1|bit_counter[0]~1_combout\,
	combout => \TX1|bit_counter[0]~2_combout\);

-- Location: LCCOMB_X22_Y18_N26
\TX1|bit_counter[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[0]~4_combout\ = (\TX1|bit_counter\(0) & ((!\TX1|bit_counter[0]~2_combout\) # (!\TX1|state.SEND_BITS~q\))) # (!\TX1|bit_counter\(0) & ((\TX1|bit_counter[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|state.SEND_BITS~q\,
	datac => \TX1|bit_counter\(0),
	datad => \TX1|bit_counter[0]~2_combout\,
	combout => \TX1|bit_counter[0]~4_combout\);

-- Location: FF_X22_Y18_N27
\TX1|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|bit_counter[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|bit_counter\(0));

-- Location: LCCOMB_X22_Y18_N0
\TX1|bit_counter[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[1]~5_combout\ = (\TX1|bit_counter[0]~2_combout\ & ((\TX1|bit_counter\(0) $ (!\TX1|bit_counter\(1))) # (!\TX1|state.SEND_BITS~q\))) # (!\TX1|bit_counter[0]~2_combout\ & (((\TX1|bit_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|bit_counter\(0),
	datab => \TX1|state.SEND_BITS~q\,
	datac => \TX1|bit_counter\(1),
	datad => \TX1|bit_counter[0]~2_combout\,
	combout => \TX1|bit_counter[1]~5_combout\);

-- Location: FF_X22_Y18_N1
\TX1|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|bit_counter[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|bit_counter\(1));

-- Location: LCCOMB_X22_Y18_N16
\TX1|bit_counter[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[2]~0_combout\ = (\TX1|state.SEND_BITS~q\ & (\TX1|bit_counter\(2) $ (((!\TX1|bit_counter\(0) & !\TX1|bit_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|bit_counter\(0),
	datab => \TX1|bit_counter\(2),
	datac => \TX1|state.SEND_BITS~q\,
	datad => \TX1|bit_counter\(1),
	combout => \TX1|bit_counter[2]~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\TX1|bit_counter[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|bit_counter[2]~3_combout\ = (\TX1|bit_counter[0]~2_combout\ & (\TX1|bit_counter[2]~0_combout\)) # (!\TX1|bit_counter[0]~2_combout\ & ((\TX1|bit_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|bit_counter[2]~0_combout\,
	datac => \TX1|bit_counter\(2),
	datad => \TX1|bit_counter[0]~2_combout\,
	combout => \TX1|bit_counter[2]~3_combout\);

-- Location: FF_X22_Y18_N21
\TX1|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|bit_counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|bit_counter\(2));

-- Location: LCCOMB_X22_Y18_N30
\TX1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|Equal1~0_combout\ = (!\TX1|bit_counter\(2) & (!\TX1|bit_counter\(0) & !\TX1|bit_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|bit_counter\(2),
	datac => \TX1|bit_counter\(0),
	datad => \TX1|bit_counter\(1),
	combout => \TX1|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\TX1|state~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~10_combout\ = (\TX1|state.SEND_BITS~q\ & (\TX1|Equal1~0_combout\ & !\TX1|bit_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|state.SEND_BITS~q\,
	datac => \TX1|Equal1~0_combout\,
	datad => \TX1|bit_counter\(3),
	combout => \TX1|state~10_combout\);

-- Location: LCCOMB_X22_Y18_N10
\TX1|state~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~19_combout\ = (\TX1|state~13_combout\) # ((\TX1|Equal0~0_combout\ & ((\TX1|state~18_combout\) # (\TX1|state~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~13_combout\,
	datab => \TX1|Equal0~0_combout\,
	datac => \TX1|state~18_combout\,
	datad => \TX1|state~10_combout\,
	combout => \TX1|state~19_combout\);

-- Location: LCCOMB_X22_Y18_N22
\TX1|state~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~21_combout\ = (\RST_N~input_o\ & ((\TX1|state~13_combout\) # ((\TX1|state.SEND_START_BIT~q\ & !\TX1|state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~13_combout\,
	datab => \RST_N~input_o\,
	datac => \TX1|state.SEND_START_BIT~q\,
	datad => \TX1|state~19_combout\,
	combout => \TX1|state~21_combout\);

-- Location: FF_X22_Y18_N23
\TX1|state.SEND_START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|state~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|state.SEND_START_BIT~q\);

-- Location: LCCOMB_X21_Y18_N12
\TX1|baudrate_counter[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[2]~2_combout\ = (\TX1|baudrate_counter\(0)) # ((!\TX1|baudrate_counter\(2) & \TX1|state.SEND_START_BIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|baudrate_counter\(2),
	datac => \TX1|baudrate_counter\(0),
	datad => \TX1|state.SEND_START_BIT~q\,
	combout => \TX1|baudrate_counter[2]~2_combout\);

-- Location: LCCOMB_X21_Y18_N2
\TX1|baudrate_counter[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[2]~3_combout\ = (\TX1|state.WAIT_FOR_REQ~q\ & (\TX1|baudrate_counter\(2) $ (((!\TX1|baudrate_counter[2]~2_combout\ & !\TX1|baudrate_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|baudrate_counter[2]~2_combout\,
	datab => \TX1|baudrate_counter\(2),
	datac => \TX1|baudrate_counter\(1),
	datad => \TX1|state.WAIT_FOR_REQ~q\,
	combout => \TX1|baudrate_counter[2]~3_combout\);

-- Location: LCCOMB_X21_Y18_N18
\TX1|baudrate_counter[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[2]~4_combout\ = (\TX1|baudrate_counter[0]~1_combout\ & (\TX1|baudrate_counter[2]~3_combout\ & ((\TX1|baudrate_counter\(2)) # (!\TX1|state.SEND_BITS~q\)))) # (!\TX1|baudrate_counter[0]~1_combout\ & (((\TX1|baudrate_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|baudrate_counter[0]~1_combout\,
	datab => \TX1|baudrate_counter[2]~3_combout\,
	datac => \TX1|baudrate_counter\(2),
	datad => \TX1|state.SEND_BITS~q\,
	combout => \TX1|baudrate_counter[2]~4_combout\);

-- Location: FF_X21_Y18_N19
\TX1|baudrate_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|baudrate_counter[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|baudrate_counter\(2));

-- Location: LCCOMB_X21_Y18_N24
\TX1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|Equal0~0_combout\ = (!\TX1|baudrate_counter\(1) & (!\TX1|baudrate_counter\(0) & !\TX1|baudrate_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|baudrate_counter\(1),
	datac => \TX1|baudrate_counter\(0),
	datad => \TX1|baudrate_counter\(2),
	combout => \TX1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y18_N6
\TX1|state~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~17_combout\ = (\TX1|Equal0~0_combout\ & (\RST_N~input_o\ & \TX1|state~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|Equal0~0_combout\,
	datac => \RST_N~input_o\,
	datad => \TX1|state~10_combout\,
	combout => \TX1|state~17_combout\);

-- Location: LCCOMB_X22_Y18_N12
\TX1|state~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~20_combout\ = (\TX1|state~19_combout\ & (\TX1|state~17_combout\)) # (!\TX1|state~19_combout\ & (((\RST_N~input_o\ & \TX1|state.SEND_STOP_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~17_combout\,
	datab => \RST_N~input_o\,
	datac => \TX1|state.SEND_STOP_BIT~q\,
	datad => \TX1|state~19_combout\,
	combout => \TX1|state~20_combout\);

-- Location: FF_X22_Y18_N13
\TX1|state.SEND_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|state.SEND_STOP_BIT~q\);

-- Location: LCCOMB_X21_Y18_N20
\TX1|baudrate_counter[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[0]~0_combout\ = (\RST_N~input_o\ & ((!\TX1|Equal0~0_combout\) # (!\TX1|state.SEND_STOP_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|state.SEND_STOP_BIT~q\,
	datac => \RST_N~input_o\,
	datad => \TX1|Equal0~0_combout\,
	combout => \TX1|baudrate_counter[0]~0_combout\);

-- Location: LCCOMB_X21_Y18_N22
\TX1|baudrate_counter[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[0]~1_combout\ = (\TX1|baudrate_counter[0]~0_combout\ & ((\TX1|state.WAIT_FOR_REQ~q\) # (\Check1|outputx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TX1|state.WAIT_FOR_REQ~q\,
	datac => \Check1|outputx~q\,
	datad => \TX1|baudrate_counter[0]~0_combout\,
	combout => \TX1|baudrate_counter[0]~1_combout\);

-- Location: LCCOMB_X21_Y18_N30
\TX1|baudrate_counter[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|baudrate_counter[1]~6_combout\ = (\TX1|baudrate_counter[0]~1_combout\ & ((\TX1|baudrate_counter\(0) $ (!\TX1|baudrate_counter\(1))) # (!\TX1|state.WAIT_FOR_REQ~q\))) # (!\TX1|baudrate_counter[0]~1_combout\ & (((\TX1|baudrate_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|baudrate_counter[0]~1_combout\,
	datab => \TX1|baudrate_counter\(0),
	datac => \TX1|baudrate_counter\(1),
	datad => \TX1|state.WAIT_FOR_REQ~q\,
	combout => \TX1|baudrate_counter[1]~6_combout\);

-- Location: FF_X21_Y18_N31
\TX1|baudrate_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|baudrate_counter[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|baudrate_counter\(1));

-- Location: LCCOMB_X21_Y18_N14
\TX1|state~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~12_combout\ = (!\TX1|baudrate_counter\(1) & (!\TX1|baudrate_counter\(2) & (!\TX1|baudrate_counter\(0) & \TX1|state.SEND_START_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|baudrate_counter\(1),
	datab => \TX1|baudrate_counter\(2),
	datac => \TX1|baudrate_counter\(0),
	datad => \TX1|state.SEND_START_BIT~q\,
	combout => \TX1|state~12_combout\);

-- Location: LCCOMB_X21_Y18_N6
\TX1|state~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~16_combout\ = (\RST_N~input_o\ & ((\TX1|state~12_combout\) # ((!\TX1|state~14_combout\ & \TX1|state.SEND_BITS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~14_combout\,
	datab => \TX1|state~12_combout\,
	datac => \TX1|state.SEND_BITS~q\,
	datad => \RST_N~input_o\,
	combout => \TX1|state~16_combout\);

-- Location: FF_X21_Y18_N7
\TX1|state.SEND_BITS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|state~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|state.SEND_BITS~q\);

-- Location: LCCOMB_X21_Y18_N0
\TX1|state~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~11_combout\ = (\TX1|state~10_combout\ & ((\TX1|Equal0~0_combout\) # ((!\TX1|state.WAIT_FOR_REQ~q\)))) # (!\TX1|state~10_combout\ & (\TX1|Equal0~0_combout\ & (\TX1|state.SEND_STOP_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~10_combout\,
	datab => \TX1|Equal0~0_combout\,
	datac => \TX1|state.SEND_STOP_BIT~q\,
	datad => \TX1|state.WAIT_FOR_REQ~q\,
	combout => \TX1|state~11_combout\);

-- Location: LCCOMB_X21_Y18_N26
\TX1|state~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~14_combout\ = (\TX1|state~11_combout\) # ((\TX1|state~12_combout\) # ((!\TX1|state.SEND_BITS~q\ & \TX1|state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state.SEND_BITS~q\,
	datab => \TX1|state~11_combout\,
	datac => \TX1|state~12_combout\,
	datad => \TX1|state~13_combout\,
	combout => \TX1|state~14_combout\);

-- Location: LCCOMB_X21_Y18_N28
\TX1|state~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|state~15_combout\ = (\TX1|baudrate_counter[0]~0_combout\ & ((\TX1|state~14_combout\) # (\TX1|state.WAIT_FOR_REQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX1|state~14_combout\,
	datac => \TX1|state.WAIT_FOR_REQ~q\,
	datad => \TX1|baudrate_counter[0]~0_combout\,
	combout => \TX1|state~15_combout\);

-- Location: FF_X21_Y18_N29
\TX1|state.WAIT_FOR_REQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|state.WAIT_FOR_REQ~q\);

-- Location: LCCOMB_X21_Y18_N8
\TX1|data_sending_started~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|data_sending_started~0_combout\ = (\Check1|outputx~q\ & ((\TX1|data_sending_started~q\) # (!\TX1|state.WAIT_FOR_REQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Check1|outputx~q\,
	datac => \TX1|data_sending_started~q\,
	datad => \TX1|state.WAIT_FOR_REQ~q\,
	combout => \TX1|data_sending_started~0_combout\);

-- Location: FF_X21_Y18_N9
\TX1|data_sending_started\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TX1|data_sending_started~0_combout\,
	sclr => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX1|data_sending_started~q\);

-- Location: LCCOMB_X21_Y18_N10
\TX1|ack_o\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TX1|ack_o~combout\ = (!\Check1|outputx~q\ & \TX1|data_sending_started~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Check1|outputx~q\,
	datac => \TX1|data_sending_started~q\,
	combout => \TX1|ack_o~combout\);

-- Location: IOIBUF_X0_Y11_N15
\SPI_MISO~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SPI_MISO,
	o => \SPI_MISO~input_o\);

ww_RDATA(0) <= \RDATA[0]~output_o\;

ww_RDATA(1) <= \RDATA[1]~output_o\;

ww_RDATA(2) <= \RDATA[2]~output_o\;

ww_RDATA(3) <= \RDATA[3]~output_o\;

ww_RDATA(4) <= \RDATA[4]~output_o\;

ww_RDATA(5) <= \RDATA[5]~output_o\;

ww_RDATA(6) <= \RDATA[6]~output_o\;

ww_RDATA(7) <= \RDATA[7]~output_o\;

ww_RDATA(8) <= \RDATA[8]~output_o\;

ww_RDATA(9) <= \RDATA[9]~output_o\;

ww_RDATA(10) <= \RDATA[10]~output_o\;

ww_RDATA(11) <= \RDATA[11]~output_o\;

ww_DONE <= \DONE~output_o\;

ww_SPI_SCK <= \SPI_SCK~output_o\;

ww_SPI_MOSI <= \SPI_MOSI~output_o\;

ww_SPI_SS_N <= \SPI_SS_N~output_o\;

ww_TX <= \TX~output_o\;

ww_ack_o <= \ack_o~output_o\;
END structure;


