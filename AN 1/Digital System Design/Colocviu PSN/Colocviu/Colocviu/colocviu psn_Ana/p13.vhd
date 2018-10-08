library	IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity pseudo is
	port (clk : in bit;
		  Q_0, Q_1,Q_2 : out std_logic);
		 
end pseudo;
architecture arh_pseudo of pseudo is
signal nQ0, nQ1,nQ2 : std_logic:='0' ;	
signal Q0,Q1,Q2: std_logic:='1' ;
signal Y : std_logic ;
signal Y1: std_logic;

component sau_exclusiv
port (A,B :in std_logic;
	  C: out std_logic);
end component;

component bist_RS					
	port (S,R :in std_logic;
		 clk: in bit;
		 Q,nQ : out std_logic);
end component;

begin					
	C1: sau_exclusiv port map(Q2,Q0,Y);
	C2: bist_RS port map (Y,Y1,clk,Q0,nQ0); 
	C3: bist_RS port map (Q0,nQ0,clk,Q1,nQ1);
	C4: bist_RS port map (Q1,nQ1,clk,Q2,nQ2);
	
	Q_0<=Q0; 
	Q_1<=Q1;
	Q_2<=Q2;		
	Y1<=not(Y);
	


end arh_pseudo;


library	IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bist_RS is
	port (S,R :in std_logic;
		 clk: in bit;
		 Q,nQ : out std_logic);
end bist_RS;

architecture arh_bist_RS of bist_RS is
signal Q_ant: std_logic;
begin				 
	process (R,S,CLK)	  
	variable Q1: std_logic:='1'; 
	variable  nQ1: std_logic:='0';
	begin
	if clk='1' and clk'event then 
		if S='0' and R='0' then Q1:=Q_ant; nQ1:=not (Q_ant);
		elsif S='0' and R='1' then 	Q1:='0'; nQ1:= '1';
		elsif S='1' and R='0' then 	Q1:='1'; nQ1:= '0';
		elsif S='1' and R='1' then  Q1:='X'; nQ1:= 'X';
		end if;		
		Q_ant<=Q1;
		Q<=Q1; 
		nQ<=nQ1;
	end if;	
	end process;
end arh_bist_RS;


library	IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sau_exclusiv is
	port (A,B :in std_logic;
		  C: out std_logic);
end sau_exclusiv;
architecture arh_sau_ex of sau_exclusiv is
begin
	C<=A xor B;
end arh_sau_ex;

			
	