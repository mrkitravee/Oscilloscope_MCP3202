library verilog;
use verilog.vl_types.all;
entity Sending_WDATA_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        PB              : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Sending_WDATA_vlg_sample_tst;
