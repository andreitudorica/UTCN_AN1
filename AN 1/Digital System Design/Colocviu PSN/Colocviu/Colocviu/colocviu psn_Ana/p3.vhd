entity mux is
	generic (nr_intrari	:natural :=15; nr_selectii : natural :=3);
	
	port( A : in bit_vector (0 to nr_intrari);
		 sel: in bit_vector (0 to nr_selectii);
		 Y: out bit);
end mux;

architecture arh_mux of mux is
begin
	process(sel)
	begin	
		if sel="0000" then Y<=A(0); end if;	
		if sel="0001" then Y<=A(1); end if;
		if sel="0010" then Y<=A(2); end if;
		if sel="0011" then Y<=A(3); end if;
		if sel="0100" then Y<=A(4); end if;
		if sel="0101" then Y<=A(5); end if;
		if sel="0110" then Y<=A(6); end if;
		if sel="0111" then Y<=A(7); end if;
		if sel="1000" then Y<=A(8); end if;
		if sel="1001" then Y<=A(9); end if;
		if sel="1010" then Y<=A(10); end if;
		if sel="1011" then Y<=A(11); end if;
		if sel="1100" then Y<=A(12); end if;
		if sel="1101" then Y<=A(13); end if;
		if sel="1110" then Y<=A(14); end if;						 
		if sel="1111" then Y<=A(15); end if;
	end process;
end arh_mux;
	
			 