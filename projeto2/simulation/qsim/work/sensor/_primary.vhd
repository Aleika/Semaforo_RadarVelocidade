library verilog;
use verilog.vl_types.all;
entity sensor is
    port(
        clock_in        : in     vl_logic;
        start           : in     vl_logic;
        stop            : in     vl_logic;
        tc              : out    vl_logic
    );
end sensor;
