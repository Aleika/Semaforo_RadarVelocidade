library verilog;
use verilog.vl_types.all;
entity Semaforo_vlg_check_tst is
    port(
        g               : in     vl_logic_vector(1 downto 0);
        r               : in     vl_logic_vector(1 downto 0);
        Va              : in     vl_logic;
        Vn              : in     vl_logic;
        y               : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end Semaforo_vlg_check_tst;
