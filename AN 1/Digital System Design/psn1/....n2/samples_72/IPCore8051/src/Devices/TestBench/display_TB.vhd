--*************************************************************
--* This file is automatically generated test bench template  *
--* By ACTIVE-VHDL    <TBgen v1.10>. Copyright (C) ALDEC Inc. *
--*                                                           *
--* This file was generated on:               1:29 PM, 4/2/99 *
--* Tested entity name:                               display *
--* File name contains tested entity:    $DSN\src\display.vhd *
--*************************************************************

library ieee;
use work.Types.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity display_tb is
end display_tb;

architecture TB_ARCHITECTURE of display_tb is
	-- Component declaration of the tested unit
	component display
	port(
		nCS : in std_logic;
		CTR : in std_logic;
		nWR : in std_logic;
		nRD : in std_logic;
		ADDRESS : in std_logic_vector(4 downto 0);
		DATA : inout std_logic_vector(7 downto 0);
		SCREEN : out ScrType );
end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal nCS : std_logic;
	signal CTR : std_logic;
	signal nWR : std_logic;
	signal nRD : std_logic;
	signal ADDRESS : std_logic_vector(4 downto 0);
	signal DATA : std_logic_vector(7 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal SCREEN : ScrType;

	-- Add your code here ...

begin

	-- Unit Under Test port map
	UUT : display
		port map
			(nCS => nCS,
			CTR => CTR,
			nWR => nWR,
			nRD => nRD,
			ADDRESS => ADDRESS,
			DATA => DATA,
			SCREEN => SCREEN );

	--Below VHDL code is an inserted .\compile\screen.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	nCS <= '1';
	CTR <= '0';
	nWR <= '1';
	ADDRESS <= "00000";
	nRD <= '1';
	DATA <= "00000001";
    wait for 100 ns; --0 ps
	nCS <= '0';
	CTR <= '1';
	nWR <= '0';
    wait for 100 ns; --100 ns
	nCS <= '1';
	CTR <= '0';
	nWR <= '1';
    wait for 100 ns; --200 ns
	DATA <= "00100000";
    wait for 100 ns; --300 ns
	nCS <= '0';
	nWR <= '0';
    wait for 100 ns; --400 ns
	nWR <= '1';
    wait for 100 ns; --500 ns
	ADDRESS <= "00001";
	DATA <= "00100001";
    wait for 100 ns; --600 ns
	nWR <= '0';
    wait for 100 ns; --700 ns
	nWR <= '1';
    wait for 100 ns; --800 ns
	ADDRESS <= "00010";
	DATA <= "00100010";
    wait for 100 ns; --900 ns
	nWR <= '0';
    wait for 100 ns; --1 us
	nWR <= '1';
    wait for 100 ns; --1100 ns
	ADDRESS <= "00011";
	DATA <= "00100011";
    wait for 100 ns; --1200 ns
	nWR <= '0';
    wait for 100 ns; --1300 ns
	nWR <= '1';
    wait for 100 ns; --1400 ns
	ADDRESS <= "00100";
	DATA <= "00100100";
    wait for 100 ns; --1500 ns
	nWR <= '0';
    wait for 100 ns; --1600 ns
	nWR <= '1';
    wait for 100 ns; --1700 ns
	ADDRESS <= "00101";
	DATA <= "00100101";
    wait for 100 ns; --1800 ns
	nWR <= '0';
    wait for 100 ns; --1900 ns
	nWR <= '1';
    wait for 100 ns; --2 us
	ADDRESS <= "00110";
	DATA <= "00100110";
    wait for 100 ns; --2100 ns
	nWR <= '0';
    wait for 100 ns; --2200 ns
	nWR <= '1';
    wait for 100 ns; --2300 ns
	ADDRESS <= "00111";
	DATA <= "00100111";
    wait for 100 ns; --2400 ns
	nWR <= '0';
    wait for 100 ns; --2500 ns
	nWR <= '1';
    wait for 100 ns; --2600 ns
	ADDRESS <= "01000";
	DATA <= "00101000";
    wait for 100 ns; --2700 ns
	nWR <= '0';
    wait for 100 ns; --2800 ns
	nWR <= '1';
    wait for 100 ns; --2900 ns
	ADDRESS <= "01001";
	DATA <= "00101001";
    wait for 100 ns; --3 us
	nWR <= '0';
    wait for 100 ns; --3100 ns
	nWR <= '1';
    wait for 100 ns; --3200 ns
	ADDRESS <= "01010";
	DATA <= "00101010";
    wait for 100 ns; --3300 ns
	nWR <= '0';
    wait for 100 ns; --3400 ns
	nWR <= '1';
    wait for 100 ns; --3500 ns
	ADDRESS <= "01011";
	DATA <= "00101011";
    wait for 100 ns; --3600 ns
	nWR <= '0';
    wait for 100 ns; --3700 ns
	nWR <= '1';
    wait for 100 ns; --3800 ns
	ADDRESS <= "01100";
	DATA <= "00101100";
    wait for 100 ns; --3900 ns
	nWR <= '0';
    wait for 100 ns; --4 us
	nWR <= '1';
    wait for 100 ns; --4100 ns
	ADDRESS <= "01101";
	DATA <= "00101101";
    wait for 100 ns; --4200 ns
	nWR <= '0';
    wait for 100 ns; --4300 ns
	nWR <= '1';
    wait for 100 ns; --4400 ns
	ADDRESS <= "01110";
	DATA <= "00101110";
    wait for 100 ns; --4500 ns
	nWR <= '0';
    wait for 100 ns; --4600 ns
	nWR <= '1';
    wait for 100 ns; --4700 ns
	ADDRESS <= "01111";
	DATA <= "00101111";
    wait for 100 ns; --4800 ns
	nWR <= '0';
    wait for 100 ns; --4900 ns
	nWR <= '1';
    wait for 100 ns; --5 us
	ADDRESS <= "10000";
	DATA <= "00110000";
    wait for 100 ns; --5100 ns
	nWR <= '0';
    wait for 100 ns; --5200 ns
	nWR <= '1';
    wait for 100 ns; --5300 ns
	ADDRESS <= "10001";
	DATA <= "00110001";
    wait for 100 ns; --5400 ns
	nWR <= '0';
    wait for 100 ns; --5500 ns
	nWR <= '1';
    wait for 100 ns; --5600 ns
	ADDRESS <= "10010";
	DATA <= "00110010";
    wait for 100 ns; --5700 ns
	nWR <= '0';
    wait for 100 ns; --5800 ns
	nWR <= '1';
    wait for 100 ns; --5900 ns
	ADDRESS <= "10011";
	DATA <= "00110011";
    wait for 100 ns; --6 us
	nWR <= '0';
    wait for 100 ns; --6100 ns
	nWR <= '1';
    wait for 100 ns; --6200 ns
	ADDRESS <= "10100";
	DATA <= "00110100";
    wait for 100 ns; --6300 ns
	nWR <= '0';
    wait for 100 ns; --6400 ns
	nWR <= '1';
    wait for 100 ns; --6500 ns
	ADDRESS <= "10101";
	DATA <= "00110101";
    wait for 100 ns; --6600 ns
	nWR <= '0';
    wait for 100 ns; --6700 ns
	nWR <= '1';
    wait for 100 ns; --6800 ns
	ADDRESS <= "10110";
	DATA <= "00110110";
    wait for 100 ns; --6900 ns
	nWR <= '0';
    wait for 100 ns; --7 us
	nWR <= '1';
    wait for 100 ns; --7100 ns
	ADDRESS <= "10111";
	DATA <= "00110111";
    wait for 100 ns; --7200 ns
	nWR <= '0';
    wait for 100 ns; --7300 ns
	nWR <= '1';
    wait for 100 ns; --7400 ns
	ADDRESS <= "11000";
	DATA <= "00111000";
    wait for 100 ns; --7500 ns
	nWR <= '0';
    wait for 100 ns; --7600 ns
	nWR <= '1';
    wait for 100 ns; --7700 ns
	ADDRESS <= "11001";
	DATA <= "00111001";
    wait for 100 ns; --7800 ns
	nWR <= '0';
    wait for 100 ns; --7900 ns
	nWR <= '1';
    wait for 100 ns; --8 us
	ADDRESS <= "11010";
	DATA <= "00111010";
    wait for 100 ns; --8100 ns
	nWR <= '0';
    wait for 100 ns; --8200 ns
	nWR <= '1';
    wait for 100 ns; --8300 ns
	ADDRESS <= "11011";
	DATA <= "00111011";
    wait for 100 ns; --8400 ns
	nWR <= '0';
    wait for 100 ns; --8500 ns
	nWR <= '1';
    wait for 100 ns; --8600 ns
	ADDRESS <= "11100";
	DATA <= "00111100";
    wait for 100 ns; --8700 ns
	nWR <= '0';
    wait for 100 ns; --8800 ns
	nWR <= '1';
    wait for 100 ns; --8900 ns
	ADDRESS <= "11101";
	DATA <= "00111101";
    wait for 100 ns; --9 us
	nWR <= '0';
    wait for 100 ns; --9100 ns
	nWR <= '1';
    wait for 100 ns; --9200 ns
	ADDRESS <= "11110";
	DATA <= "00111110";
    wait for 100 ns; --9300 ns
	nWR <= '0';
    wait for 100 ns; --9400 ns
	nWR <= '1';
    wait for 100 ns; --9500 ns
	ADDRESS <= "11111";
	DATA <= "00111111";
    wait for 100 ns; --9600 ns
	nWR <= '0';
    wait for 100 ns; --9700 ns
	nWR <= '1';
    wait for 100 ns; --9800 ns
	ADDRESS <= "00000";
	DATA <= "00000010";
    wait for 100 ns; --9900 ns
	CTR <= '1';
	nWR <= '0';
    wait for 100 ns; --10 us
	CTR <= '0';
	nWR <= '1';
    wait for 100 ns; --10100 ns
	DATA <= "01000000";
    wait for 100 ns; --10200 ns
	nWR <= '0';
    wait for 100 ns; --10300 ns
	nWR <= '1';
    wait for 100 ns; --10400 ns
	ADDRESS <= "00001";
	DATA <= "01000001";
    wait for 100 ns; --10500 ns
	nWR <= '0';
    wait for 100 ns; --10600 ns
	nWR <= '1';
    wait for 100 ns; --10700 ns
	ADDRESS <= "00010";
	DATA <= "01000010";
    wait for 100 ns; --10800 ns
	nWR <= '0';
    wait for 100 ns; --10900 ns
	nWR <= '1';
    wait for 100 ns; --11 us
	ADDRESS <= "00011";
	DATA <= "01000011";
    wait for 100 ns; --11100 ns
	nWR <= '0';
    wait for 100 ns; --11200 ns
	nWR <= '1';
    wait for 100 ns; --11300 ns
	ADDRESS <= "00100";
	DATA <= "01000100";
    wait for 100 ns; --11400 ns
	nWR <= '0';
    wait for 100 ns; --11500 ns
	nWR <= '1';
    wait for 100 ns; --11600 ns
	ADDRESS <= "00101";
	DATA <= "01000101";
    wait for 100 ns; --11700 ns
	nWR <= '0';
    wait for 100 ns; --11800 ns
	nWR <= '1';
    wait for 100 ns; --11900 ns
	ADDRESS <= "00110";
	DATA <= "01000110";
    wait for 100 ns; --12 us
	nWR <= '0';
    wait for 100 ns; --12100 ns
	nWR <= '1';
    wait for 100 ns; --12200 ns
	ADDRESS <= "00111";
	DATA <= "01000111";
    wait for 100 ns; --12300 ns
	nWR <= '0';
    wait for 100 ns; --12400 ns
	nWR <= '1';
    wait for 100 ns; --12500 ns
	ADDRESS <= "01000";
	DATA <= "01001000";
    wait for 100 ns; --12600 ns
	nWR <= '0';
    wait for 100 ns; --12700 ns
	nWR <= '1';
    wait for 100 ns; --12800 ns
	ADDRESS <= "01001";
	DATA <= "01001001";
    wait for 100 ns; --12900 ns
	nWR <= '0';
    wait for 100 ns; --13 us
	nWR <= '1';
    wait for 100 ns; --13100 ns
	ADDRESS <= "01010";
	DATA <= "01001010";
    wait for 100 ns; --13200 ns
	nWR <= '0';
    wait for 100 ns; --13300 ns
	nWR <= '1';
    wait for 100 ns; --13400 ns
	ADDRESS <= "01011";
	DATA <= "01001011";
    wait for 100 ns; --13500 ns
	nWR <= '0';
    wait for 100 ns; --13600 ns
	nWR <= '1';
    wait for 100 ns; --13700 ns
	ADDRESS <= "01100";
	DATA <= "01001100";
    wait for 100 ns; --13800 ns
	nWR <= '0';
    wait for 100 ns; --13900 ns
	nWR <= '1';
    wait for 100 ns; --14 us
	ADDRESS <= "01101";
	DATA <= "01001101";
    wait for 100 ns; --14100 ns
	nWR <= '0';
    wait for 100 ns; --14200 ns
	nWR <= '1';
    wait for 100 ns; --14300 ns
	ADDRESS <= "01110";
	DATA <= "01001110";
    wait for 100 ns; --14400 ns
	nWR <= '0';
    wait for 100 ns; --14500 ns
	nWR <= '1';
    wait for 100 ns; --14600 ns
	ADDRESS <= "01111";
	DATA <= "01001111";
    wait for 100 ns; --14700 ns
	nWR <= '0';
    wait for 100 ns; --14800 ns
	nWR <= '1';
    wait for 100 ns; --14900 ns
	ADDRESS <= "10000";
	DATA <= "01010000";
    wait for 100 ns; --15 us
	nWR <= '0';
    wait for 100 ns; --15100 ns
	nWR <= '1';
    wait for 100 ns; --15200 ns
	ADDRESS <= "10001";
	DATA <= "01010001";
    wait for 100 ns; --15300 ns
	nWR <= '0';
    wait for 100 ns; --15400 ns
	nWR <= '1';
    wait for 100 ns; --15500 ns
	ADDRESS <= "10010";
	DATA <= "01010010";
    wait for 100 ns; --15600 ns
	nWR <= '0';
    wait for 100 ns; --15700 ns
	nWR <= '1';
    wait for 100 ns; --15800 ns
	ADDRESS <= "10011";
	DATA <= "01010011";
    wait for 100 ns; --15900 ns
	nWR <= '0';
    wait for 100 ns; --16 us
	nWR <= '1';
    wait for 100 ns; --16100 ns
	ADDRESS <= "10100";
	DATA <= "01010100";
    wait for 100 ns; --16200 ns
	nWR <= '0';
    wait for 100 ns; --16300 ns
	nWR <= '1';
    wait for 100 ns; --16400 ns
	ADDRESS <= "10101";
	DATA <= "01010101";
    wait for 100 ns; --16500 ns
	nWR <= '0';
    wait for 100 ns; --16600 ns
	nWR <= '1';
    wait for 100 ns; --16700 ns
	ADDRESS <= "10110";
	DATA <= "01010110";
    wait for 100 ns; --16800 ns
	nWR <= '0';
    wait for 100 ns; --16900 ns
	nWR <= '1';
    wait for 100 ns; --17 us
	ADDRESS <= "10111";
	DATA <= "01010111";
    wait for 100 ns; --17100 ns
	nWR <= '0';
    wait for 100 ns; --17200 ns
	nWR <= '1';
    wait for 100 ns; --17300 ns
	ADDRESS <= "11000";
	DATA <= "01011000";
    wait for 100 ns; --17400 ns
	nWR <= '0';
    wait for 100 ns; --17500 ns
	nWR <= '1';
    wait for 100 ns; --17600 ns
	ADDRESS <= "11001";
	DATA <= "01011001";
    wait for 100 ns; --17700 ns
	nWR <= '0';
    wait for 100 ns; --17800 ns
	nWR <= '1';
    wait for 100 ns; --17900 ns
	ADDRESS <= "11010";
	DATA <= "01011010";
    wait for 100 ns; --18 us
	nWR <= '0';
    wait for 100 ns; --18100 ns
	nWR <= '1';
    wait for 100 ns; --18200 ns
	ADDRESS <= "11011";
	DATA <= "01011011";
    wait for 100 ns; --18300 ns
	nWR <= '0';
    wait for 100 ns; --18400 ns
	nWR <= '1';
    wait for 100 ns; --18500 ns
	ADDRESS <= "11100";
	DATA <= "01011100";
    wait for 100 ns; --18600 ns
	nWR <= '0';
    wait for 100 ns; --18700 ns
	nWR <= '1';
    wait for 100 ns; --18800 ns
	ADDRESS <= "11101";
	DATA <= "01011101";
    wait for 100 ns; --18900 ns
	nWR <= '0';
    wait for 100 ns; --19 us
	nWR <= '1';
    wait for 100 ns; --19100 ns
	ADDRESS <= "11110";
	DATA <= "01011110";
    wait for 100 ns; --19200 ns
	nWR <= '0';
    wait for 100 ns; --19300 ns
	nWR <= '1';
    wait for 100 ns; --19400 ns
	ADDRESS <= "11111";
	DATA <= "01011111";
    wait for 100 ns; --19500 ns
	nWR <= '0';
    wait for 100 ns; --19600 ns
	nWR <= '1';
    wait for 100 ns; --19700 ns
	ADDRESS <= "00000";
	DATA <= "00000010";
    wait for 100 ns; --19800 ns
	CTR <= '1';
	nWR <= '0';
    wait for 100 ns; --19900 ns
	nWR <= '1';
    wait for 10 us; --20 us
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	



	-- Add your stimulus here ...

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_display of display_tb is
	for TB_ARCHITECTURE
		for UUT : display
			use entity work.display(display);
		end for;
	end for;
end TESTBENCH_FOR_display;

