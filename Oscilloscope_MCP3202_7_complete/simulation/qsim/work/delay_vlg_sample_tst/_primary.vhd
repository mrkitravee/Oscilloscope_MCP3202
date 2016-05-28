library verilog;
use verilog.vl_types.all;
entity delay_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        req             : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end delay_vlg_sample_tst;
