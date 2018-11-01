library verilog;
use verilog.vl_types.all;
entity Semaforo_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        clk             : in     vl_logic;
        sensor1         : in     vl_logic;
        sensor2         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Semaforo_vlg_sample_tst;
