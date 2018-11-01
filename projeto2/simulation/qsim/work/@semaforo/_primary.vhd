library verilog;
use verilog.vl_types.all;
entity Semaforo is
    port(
        clk             : in     vl_logic;
        r               : out    vl_logic_vector(1 downto 0);
        g               : out    vl_logic_vector(1 downto 0);
        y               : out    vl_logic_vector(1 downto 0);
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        sensor1         : in     vl_logic;
        sensor2         : in     vl_logic;
        Va              : out    vl_logic;
        Vn              : out    vl_logic
    );
end Semaforo;
