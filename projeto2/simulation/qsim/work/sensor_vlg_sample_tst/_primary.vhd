library verilog;
use verilog.vl_types.all;
entity sensor_vlg_sample_tst is
    port(
        clock_in        : in     vl_logic;
        start           : in     vl_logic;
        stop            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end sensor_vlg_sample_tst;
