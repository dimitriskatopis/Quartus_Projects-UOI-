library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity askisi1 is 
port (clock,reset,enable: in STD_LOGIC;
		Q:inout STD_LOGIC_VECTOR (7 downto 0) );
		end askisi1;
		

architecture askisi1 of askisi1 is 
begin 
process (clock,reset )
begin
if (reset='1') then 
	Q<=(others=>'0');
	elsif (CLOCK' EVENT AND CLOCK='1') then 
		if (enable='1') then 
		Q<=Q+1;
		elsif (enable='0') then 
		Q<=Q-1;
		end if ;
	end if;
end process;

end askisi1;
