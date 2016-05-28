library verilog;
use verilog.vl_types.all;
entity Sending_WDATA is
    port(
        PB              : in     vl_logic;
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        O               : out    vl_logic_vector(3 downto 0)
    );
end Sending_WDATA;
