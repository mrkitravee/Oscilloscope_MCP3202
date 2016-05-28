library verilog;
use verilog.vl_types.all;
entity Ossiloscope_MCP3202_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RST_N           : in     vl_logic;
        SPI_MISO        : in     vl_logic;
        STARTX          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Ossiloscope_MCP3202_vlg_sample_tst;
