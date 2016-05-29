library verilog;
use verilog.vl_types.all;
entity Ossiloscope_MCP3202_vlg_check_tst is
    port(
        ack_o           : in     vl_logic;
        Detect_to_tx    : in     vl_logic_vector(3 downto 0);
        SPI_MOSI        : in     vl_logic;
        SPI_SCK         : in     vl_logic;
        SPI_SS_N        : in     vl_logic;
        TX_out          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Ossiloscope_MCP3202_vlg_check_tst;
