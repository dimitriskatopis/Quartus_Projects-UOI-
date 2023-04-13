library IEEE;

use IEEE.std_logic_1164.all;

entity askisi1 is 
port ( A,B,X,Y : in STD_LOGIc;
			Z:out STD_LOGIC);
end askisi1 ;
architecture lab of askisi1 is
begin 
PROCESS (A,B,X,Y) 
begin 
if (X = '1' ) then 
 z<= (( A and B ) or A) ;
 else
 z<= ((A and B ) or B );
end if ;
if (Y = '1'  ) then 
Z<= (not ( A and B ) or not (A)) ;
else 
z<= (not ( A and B) or not ( B ));
end if ;
end PROCESS;
end lab ;

	