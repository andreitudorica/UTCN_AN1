entity secv is
	port (A :in bit;
	clk: in bit;
	B:out bit_vector (3 downto 0));
end secv;
architecture arh_secv of secv is
begin
	process (A,clk)
	variable B1: bit_vector (3 downto 0):="0000";
	begin 
		if clk='1' and clk'event then
			B1:=B1 srl 1;	 B1(3):=A;
		if B1="1100" then report "secventa a fost detectata";  
		end if;
		end if;
		B<=B1;
	end process;
end architecture;
	