library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.ALL;	 

package pachet_divide is
function divide ( a : std_logic_vector ; b : std_logic_vector ) return std_logic_vector;
end;	

package body pachet_divide is
function  divide ( a : std_logic_vector ; b : std_logic_vector ) return std_logic_vector is
variable a1 : std_logic_vector(a'length-1 downto 0):=a;
variable b1 : std_logic_vector(b'length-1 downto 0):=b;
variable p1 : std_logic_vector(b'length downto 0):= (others => '0');
variable i : integer:=0;

begin
for i in 0 to b'length-1 loop
p1(b'length-1 downto 1) := p1(b'length-2 downto 0);
p1(0) := a1(a'length-1);
a1(a'length-1 downto 1) := a1(a'length-2 downto 0);
p1 := p1-b1;
if(p1(b'length-1) ='1') then
a1(0) :='0';
p1 := p1+b1;
else
a1(0) :='1';
end if;
end loop;
return a1;

end divide;
end;

