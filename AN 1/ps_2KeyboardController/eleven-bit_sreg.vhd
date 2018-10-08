library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity shift_register is
	port (
	din:in std_logic; 
	clk:in std_logic; 
	rst:in std_logic;
	q:out std_logic_vector(7 downto 0));
end shift_register;			

architecture arh1 of shift_register is	
signal aux:std_logic_vector(10 downto 0);
begin	
	process(clk,rst,aux)
	begin
		if (rst='1') then	   
			aux<="00000000000";
		else if (clk='1')and (clk'event) then 
			for i in 0 to 9 loop 
				aux(i)<=aux(i+1);
			end loop;
			aux(10)<=din;
		end if;
		end if;	 
	q<=aux(8 downto 1);
	end process;
end arh1;
