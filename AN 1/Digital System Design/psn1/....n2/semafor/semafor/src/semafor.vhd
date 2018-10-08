

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity semafor is
	port( clk,r,senzor1,senzor2:in std_logic;
	      rosu1,rosu2,galben1,galben2,verde1,verde2:out std_logic);
end semafor;						

architecture arhsemafor of semafor is	
type stare_t is (st0,st1,st2,st3,st4,st5,st6,st7); 
signal stare,nxstare:stare_t;
begin	  
	actualizeaza_stare:process (r,clk)
	begin 
		if(r='1') then  stare<=st0;
			
		elsif clk='1' and clk'event then
			stare<=nxstare;
		end if;
		end process actualizeaza_stare;
tranzitii:process(stare,senzor1,senzor2)
begin
	rosu1<='0'; galben1<='0'; verde1<='0';
	rosu2<='0'; galben2<='0'; verde2<='0';
	case stare is
		when st0=> verde1<='1'; rosu2<='1';
		if senzor2=senzor1 then nxstare<=st1;
		elsif senzor1='0' and senzor2='1' then 
			nxstare<=st2;
		else nxstare<=st0;
		end if;	
		
		when st1=> verde1<='1'; rosu2<='1';
		nxstare<=st2;  
		
		when st2=> verde1<='1'; rosu2<='1';
		nxstare<=st3;  
		
		when st3=> galben1<='1'; rosu2<='1';
		nxstare<=st4;  
		
		when st4=> rosu1<='1'; verde2<='1';
		if senzor1='0' and senzor2='0' then nxstare<=st5;
		elsif senzor1='1' and senzor2='0' then 
			nxstare<=st6;
		else nxstare<=st4;
		end if;	
		
		when st5=> rosu1<='1'; verde2<='1';
		nxstare<=st6;  
		
	  	when st6=> rosu1<='1'; verde2<='1';
		  nxstare<=st7;
		  
		  when st7=> rosu1<='1'; galben2<='1';
		  nxstare<=st0;
		end case;
		end process tranzitii;
	

end arhsemafor;
