library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ms_jk is
end ms_jk;
architecture arh_ms_jk of ms_jk is
component jk 	
	port(J,K,S,R,CLK: in bit;
		 Q,nQ: out bit);
end component;

signal J,K,S,R,CLK: bit;
signal Q,nQ : bit; 
shared variable	end_sim : boolean := false;

begin

	UST:  JK port map (J=>J,K=>K,S=>S,R=>R,CLK=>CLK,Q=>Q,nQ=>nQ);
	
	process
	begin
	if not end_sim then
	CLK <='0';
	wait for 20 ns;
	CLK<='1'; 
	wait for 20 ns;
	else wait;
	end if;					 
	end process;	
	
	process
	begin
		wait for 40 ns;
		J<='0'; K<='0';  
		wait for 40 ns;	
		J<='1'; K<='0';  
		wait for 40 ns;	
		J<='0'; K<='1'; 
		wait for 40 ns;
		J<='1'; K<='1'; 					 
		wait for 40 ns;
		end_sim:= true;
		wait;
	end process;
end arh_ms_jk;
		




library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity JK is
	port(J,K,S,R,CLK: in bit;
	     Q,nQ: out bit);
end JK;

architecture arh_JK of JK is   
begin
	process(J,K,S,R,CLK)			  
	variable Q1: bit;
	variable stare_anterioara: bit;
	begin
		if (CLK='1' and CLK'EVENT) then
			if(J='0' and K='0') then Q1:=stare_anterioara;
	     		elsif(J='0' and K='1') then Q1:='0';
				elsif(J='1' and K='0') then Q1:='1';
				else Q1:=not(stare_anterioara);
	        end if;
		end if;		
	stare_anterioara:=Q1;
	Q<=Q1;
	nQ<=not(Q1);
	end process;
end arh_JK;
