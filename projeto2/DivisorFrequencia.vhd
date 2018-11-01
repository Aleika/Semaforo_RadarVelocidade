library ieee;
use ieee.std_logic_1164.all;

entity DivisorFrequencia is 

port (
clock_in : in std_logic;
clock20: out std_logic;
clock10: out std_logic;
clock30: out std_logic;
clock3: out std_logic;
clock1: out std_logic
);

end DivisorFrequencia;


architecture DivisorFrequencia of DivisorFrequencia is
signal contagem1:  integer range 0 to 25000000 := 0;
signal contagem10:  integer range 0 to 250000000 := 0;
signal contagem20:  integer range 0 to 500000000 := 0;
signal contagem30:  integer range 0 to 750000000 := 0;
signal contagem3: integer range 0 to 75000000 := 0;
signal estado: STD_LOGIC_vector(4 downto 0);

begin

process (clock_in, contagem1, contagem10, contagem20, contagem3, contagem30)

begin

if(clock_in='1' and clock_in'event) then

if(contagem1=1) then
 estado(0) <= not estado(0);
 contagem1 <= 1;
 else
  contagem1 <= contagem1 + 1;
end if;

if(contagem20=5) then
 estado(1) <= not estado(1);
 contagem20 <= 1;
 else
  contagem20 <= contagem20 + 1;
end if;

if(contagem30=10) then
 estado(2) <= not estado(2);
 contagem30 <= 1;
 else
  contagem30 <= contagem30 + 1;
end if;

if(contagem10=3) then
 estado(3) <= not estado(3);
 contagem10 <= 1;
 else
  contagem10 <= contagem10 + 1;
end if;

if(contagem3=2) then
 estado(4) <= not estado(4);
 contagem3 <= 1;
 else
  contagem3 <= contagem3 + 1;
end if;
end if;

end process;
clock1 <= estado(0);
clock20 <= estado(1);
clock30 <= estado(2);
clock10 <= estado(3);
clock3 <= estado(4);

end DivisorFrequencia;