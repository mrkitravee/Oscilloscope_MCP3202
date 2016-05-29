library verilog;
use verilog.vl_types.all;
entity Ossiloscope_MCP3202 is
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        STARTX          : in     vl_logic;
        SPI_SCK         : out    vl_logic;
        SPI_MOSI        : out    vl_logic;
        SPI_MISO        : in     vl_logic;
        SPI_SS_N        : out    vl_logic;
        TX_out          : out    vl_logic;
        ack_o           : out    vl_logic;
        Detect_to_tx    : out    vl_logic_vector(3 downto 0)
    );
end Ossiloscope_MCP3202;
