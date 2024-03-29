library	IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;	
use IEEE.std_logic_arith.all;

entity buf is
	port(A: in std_logic_vector (7 downto 0);
		S:in std_logic;
		B: out std_logic_vector (7 downto 0));
end buf;

architecture arh_buf of buf is
begin
	process(s,A)
	variable B1: std_logic_vector (7 downto 0);
	begin
	if S='1' then B1:=A; end if;
	B<=B1;
	end process;   
end arh_buf;

library	IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;	
use IEEE.std_logic_arith.all;

entity ms_buf is
end ms_buf;
architecture arh_ms_buf of ms_buf is
signal 	A,B: std_logic_vector (7 downto 0):="00000000";
signal S: std_logic;
component buf							   
	port(A: in std_logic_vector (7 downto 0);
		S: in std_logic;
		B: out std_logic_vector (7 downto 0));
end component;

begin
	UST: buf port map (A,S,B);

	process
	begin
		S<='1';
		A<="00000000";
		wait for 10 ns;
		for i in 0 to 254 loop
			A<=A+1; 
			wait for 10 ns;
		end loop;
		wait;
	end process;
end arh_ms_buf;
