library verilog;
use verilog.vl_types.all;
entity delay is
    port(
        clk             : in     vl_logic;
        req             : in     vl_logic;
        b               : out    vl_logic;
        reset           : in     vl_logic
    );
end delay;
