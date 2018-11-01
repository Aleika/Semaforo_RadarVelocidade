library ieee;
use ieee.std_logic_1164.all;

entity sensor is 

port (
clock_in, start, stop: in std_logic;
tc: out std_logic
);

end sensor;


architecture sensor of sensor is
signal contagem:  integer range 0 to 25000000 := 0;

begin

process (clock_in, contagem)

begin
	if(clock_in='1' and clock_in'event and start='1' and stop='0') then			
		if(contagem < 7) then
			contagem <= contagem + 1;
			tc <='0';
		else
			tc <= '1';
		end if;
	end if;
	
	if(stop='1') then
		contagem <= 0;
	end if;
end process;


end sensor;