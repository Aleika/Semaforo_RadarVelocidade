library ieee;
use ieee.std_logic_1164.all;

entity Semaforo is

port(
	clk: in std_logic;
	r : buffer std_logic_vector (1 downto 0); 
	g : buffer std_logic_vector (1 downto 0);
	y : buffer std_logic_vector (1 downto 0);
	A, B, C: in std_logic;
	sensor1, sensor2: in std_logic;
	Va, Vn: out std_logic
);

end Semaforo;

architecture SemaforoArch of Semaforo is

signal raux: std_logic_vector(1 downto 0) := "10";
signal gaux: std_logic_vector(1 downto 0) := "01";
signal yaux: std_logic_vector(1 downto 0) := "00";
signal clock1: std_logic;
signal clock10: std_logic;
signal clock20: std_logic;
signal clock30: std_logic;
signal clock3: std_logic;
signal tc: std_logic;

component DivisorFrequencia is 
port (
clock_in : in std_logic;
clock20: out std_logic;
clock10: out std_logic;
clock30: out std_logic;
clock3: out std_logic;
clock1: out std_logic
);
end component;

component sensor is 
port (
	clock_in, start, stop: in std_logic;
	tc: out std_logic
	);
end component;
begin

process (clock1, clock10, clock20, clock3, clock30, gaux, raux, yaux, clk)

begin
gaux(0) <= (((clock20 and A) or (clock30 and B)) and raux(1)) and (not C);

raux(0) <= (((clock20 and A) or (clock10 and B)) and (gaux(1) or yaux(1))) and (not C);

yaux(0) <= ((clock3 and (A or B)) and (not gaux(1))) or (clock1 and C);
 
end process;

divFreq: DivisorFrequencia port map (clk, clock20, clock10, clock30,clock3,clock1);

g(0) <= gaux(0);
g(1) <= (not gaux(0)) and (not C); 

r(0) <= raux(0);
r(1) <= ((gaux(0) or yaux(0)) and (not g(1))) and (not C);

y(0) <= yaux(0);
y(1) <= (gaux(0) and (not yaux(0))) or (yaux(0) and C);

controladorSensor: sensor port map (clk,sensor1, sensor2, tc);
Va <= tc;
Vn <= (not tc);

end SemaforoArch;
