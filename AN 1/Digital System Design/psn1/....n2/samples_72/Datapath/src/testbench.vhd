--*************************************************************
--* This file is automatically generated test bench template  *
--* By ACTIVE-VHDL    <TBgen v1.10>. Copyright (C) ALDEC Inc. *
--*                                                           *
--* This file was generated on:               15:42, 99-02-12 *
--* Tested entity name:                                   top *
--* File name contains tested entity:    $DSN\compile\top.vhd *
--*************************************************************

library ieee;
use ieee.std_logic_1164.all;
library ieee;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;
	-- Add your library and packages declaration here ...

entity top_testbench is
	-- Generic declarations of the tested unit
	generic(
		SIZE : NATURAL := 15 );
end top_testbench;

architecture TB_ARCHITECTURE of top_testbench is
file RESULTS: TEXT open WRITE_MODE is "results.txt";
-- Component declaration of the tested unit
	component top
	generic(
		SIZE : NATURAL := 15 );
	port(
		CLK : in std_logic;
		RESET : in std_logic;
		START : in std_logic;
		CODE : in std_logic_vector(11 downto 0);
		DATA_IN : in std_logic_vector(SIZE downto 0);
		OVL : out std_logic;
		Q_OUT : out std_logic_vector(SIZE downto 0) );
end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal CLK : std_logic;
	signal RESET : std_logic;
	signal START : std_logic;
	signal CODE : std_logic_vector(11 downto 0);
	signal DATA_IN : std_logic_vector(SIZE downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal OVL : std_logic;
	signal Q_OUT : std_logic_vector(SIZE downto 0);

	--Signal used to stop clock signal generators
	signal END_SIM: BOOLEAN:=FALSE;

	-- Add your code here ...
procedure WRITE_RESULTS(
	CLK : std_logic;
	RESET : std_logic;
	START : std_logic;
	CODE : std_logic_vector(11 downto 0);
	DATA_IN : std_logic_vector(SIZE downto 0);
	OVL : std_logic;
	Q_OUT : std_logic_vector(SIZE downto 0)) is 

	variable L_OUT : LINE;
begin
	write(l_out, now, right, 15, ps);
	write(l_out,CLK, right, 2);
	write(l_out,RESET, right, 2);
	write(l_out,START, right, 2);
	write(l_out,CODE, right, 2);
	write(l_out,DATA_IN, right, 2);
	write(l_out,OVL, right, 2);
	write(l_out,Q_OUT, right, 2);
	writeline(RESULTS, L_OUT);
end;

begin

	-- Unit Under Test port map
	UUT : top
		port map
			(CLK => CLK,
			RESET => RESET,
			START => START,
			CODE => CODE,
			DATA_IN => DATA_IN,
			OVL => OVL,
			Q_OUT => Q_OUT );

	--Below VHDL code is an inserted .\compile\top_functional.vhs
	--User can modify it ....

STIMULUS: process
begin  -- of stimulus process
--wait for <time to next event>; -- <current time>

	RESET <= '1';
	START <= '1';
	CODE <= "111111000111";
	DATA_IN <= "0000000000000000";
    wait for 100 ns; --0 ps
	DATA_IN <= "0000000000000001";
    wait for 100 ns; --100 ns
	DATA_IN <= "0000000000000010";
    wait for 75 ns; --200 ns
	RESET <= '0';
    wait for 25 ns; --275 ns	
	DATA_IN <= "0000000000000011";
    wait for 100 ns; --300 ns
	DATA_IN <= "0000000000000100";
    wait for 25 ns; --400 ns
	START <= '0';
    wait for 75 ns; --425 ns
	DATA_IN <= "0000000000000101";
    wait for 100 ns; --500 ns
	DATA_IN <= "0000000000000110";
    wait for 100 ns; --600 ns
	DATA_IN <= "0000000000000111";
    wait for 100 ns; --700 ns
	DATA_IN <= "0000000000001000";
    wait for 100 ns; --800 ns
	DATA_IN <= "0000000000001001";
    wait for 100 ns; --900 ns
	DATA_IN <= "0000000000001010";
    wait for 100 ns; --1 us
	DATA_IN <= "0000000000001011";
    wait for 100 ns; --1100 ns
	DATA_IN <= "0000000000001100";
    wait for 100 ns; --1200 ns
	DATA_IN <= "0000000000001101";
    wait for 100 ns; --1300 ns
	DATA_IN <= "0000000000001110";
    wait for 100 ns; --1400 ns
	DATA_IN <= "0000000000001111";
    wait for 100 ns; --1500 ns
	DATA_IN <= "0000000000010000";
    wait for 100 ns; --1600 ns
	DATA_IN <= "0000000000010001";
    wait for 100 ns; --1700 ns
	DATA_IN <= "0000000000010010";
    wait for 100 ns; --1800 ns
	DATA_IN <= "0000000000010011";
    wait for 100 ns; --1900 ns
	DATA_IN <= "0000000000010100";
    wait for 100 ns; --2 us
	DATA_IN <= "0000000000010101";
    wait for 100 ns; --2100 ns
	DATA_IN <= "0000000000010110";
    wait for 100 ns; --2200 ns
	DATA_IN <= "0000000000010111";
    wait for 100 ns; --2300 ns
	DATA_IN <= "0000000000011000";
    wait for 100 ns; --2400 ns
	DATA_IN <= "0000000000011001";
    wait for 100 ns; --2500 ns
	DATA_IN <= "0000000000011010";
    wait for 100 ns; --2600 ns
	DATA_IN <= "0000000000011011";
    wait for 100 ns; --2700 ns
	DATA_IN <= "0000000000011100";
    wait for 100 ns; --2800 ns
	DATA_IN <= "0000000000011101";
    wait for 100 ns; --2900 ns
	DATA_IN <= "0000000000011110";
    wait for 100 ns; --3 us
	DATA_IN <= "0000000000011111";
    wait for 100 ns; --3100 ns
	DATA_IN <= "0000000000100000";
    wait for 100 ns; --3200 ns
	DATA_IN <= "0000000000100001";
    wait for 100 ns; --3300 ns
	DATA_IN <= "0000000000100010";
    wait for 100 ns; --3400 ns
	DATA_IN <= "0000000000100011";
    wait for 100 ns; --3500 ns
	DATA_IN <= "0000000000100100";
    wait for 100 ns; --3600 ns
	DATA_IN <= "0000000000100101";
    wait for 100 ns; --3700 ns
	DATA_IN <= "0000000000100110";
    wait for 100 ns; --3800 ns
	DATA_IN <= "0000000000100111";
    wait for 100 ns; --3900 ns
	DATA_IN <= "0000000000101000";
    wait for 100 ns; --4 us
	DATA_IN <= "0000000000101001";
    wait for 100 ns; --4100 ns
	DATA_IN <= "0000000000101010";
    wait for 100 ns; --4200 ns
	DATA_IN <= "0000000000101011";
    wait for 100 ns; --4300 ns
	DATA_IN <= "0000000000101100";
    wait for 100 ns; --4400 ns
	DATA_IN <= "0000000000101101";
    wait for 100 ns; --4500 ns
	DATA_IN <= "0000000000101110";
    wait for 100 ns; --4600 ns
	DATA_IN <= "0000000000101111";
    wait for 100 ns; --4700 ns
	DATA_IN <= "0000000000110000";
    wait for 100 ns; --4800 ns
	DATA_IN <= "0000000000110001";
    wait for 100 ns; --4900 ns
	DATA_IN <= "0000000000110010";
    wait for 100 ns; --5 us
	DATA_IN <= "0000000000110011";
    wait for 100 ns; --5100 ns
	DATA_IN <= "0000000000110100";
    wait for 100 ns; --5200 ns
	DATA_IN <= "0000000000110101";
    wait for 100 ns; --5300 ns
	DATA_IN <= "0000000000110110";
    wait for 100 ns; --5400 ns
	DATA_IN <= "0000000000110111";
    wait for 100 ns; --5500 ns
	DATA_IN <= "0000000000111000";
    wait for 100 ns; --5600 ns
	DATA_IN <= "0000000000111001";
    wait for 100 ns; --5700 ns
	DATA_IN <= "0000000000111010";
    wait for 100 ns; --5800 ns
	DATA_IN <= "0000000000111011";
    wait for 100 ns; --5900 ns
	CODE <= "100010001000";
	DATA_IN <= "0000000000111100";
    wait for 75 ns; --6 us
	START <= '1';
    wait for 25 ns; --6075 ns
	DATA_IN <= "0000000000111101";
    wait for 100 ns; --6100 ns
	DATA_IN <= "0000000000111110";
    wait for 100 ns; --6200 ns
	DATA_IN <= "0000000000111111";
    wait for 100 ns; --6300 ns
	DATA_IN <= "0000000001000000";
    wait for 100 ns; --6400 ns
	DATA_IN <= "0000000001000001";
    wait for 100 ns; --6500 ns
	DATA_IN <= "0000000001000010";
    wait for 100 ns; --6600 ns
	DATA_IN <= "0000000001000011";
    wait for 100 ns; --6700 ns
	DATA_IN <= "0000000001000100";
    wait for 100 ns; --6800 ns
	DATA_IN <= "0000000001000101";
    wait for 100 ns; --6900 ns
	START <= '0';
	DATA_IN <= "0000000001000110";
    wait for 100 ns; --7 us
	DATA_IN <= "0000000001000111";
    wait for 100 ns; --7100 ns
	DATA_IN <= "0000000001001000";
    wait for 100 ns; --7200 ns
	DATA_IN <= "0000000001001001";
    wait for 100 ns; --7300 ns
	DATA_IN <= "0000000001001010";
    wait for 100 ns; --7400 ns
	DATA_IN <= "0000000001001011";
    wait for 100 ns; --7500 ns
	DATA_IN <= "0000000001001100";
    wait for 100 ns; --7600 ns
	DATA_IN <= "0000000001001101";
    wait for 100 ns; --7700 ns
	DATA_IN <= "0000000001001110";
    wait for 100 ns; --7800 ns
	DATA_IN <= "0000000001001111";
    wait for 100 ns; --7900 ns
	DATA_IN <= "0000000001010000";
    wait for 100 ns; --8 us
	DATA_IN <= "0000000001010001";
    wait for 100 ns; --8100 ns
	DATA_IN <= "0000000001010010";
    wait for 100 ns; --8200 ns
	DATA_IN <= "0000000001010011";
    wait for 100 ns; --8300 ns
	DATA_IN <= "0000000001010100";
    wait for 100 ns; --8400 ns
	DATA_IN <= "0000000001010101";
    wait for 100 ns; --8500 ns
	DATA_IN <= "0000000001010110";
    wait for 100 ns; --8600 ns
	DATA_IN <= "0000000001010111";
    wait for 100 ns; --8700 ns
	DATA_IN <= "0000000001011000";
    wait for 100 ns; --8800 ns
	DATA_IN <= "0000000001011001";
    wait for 100 ns; --8900 ns
	DATA_IN <= "0000000001011010";
    wait for 100 ns; --9 us
	DATA_IN <= "0000000001011011";
    wait for 100 ns; --9100 ns
	DATA_IN <= "0000000001011100";
    wait for 100 ns; --9200 ns
	DATA_IN <= "0000000001011101";
    wait for 100 ns; --9300 ns
	DATA_IN <= "0000000001011110";
    wait for 100 ns; --9400 ns
	DATA_IN <= "0000000001011111";
    wait for 100 ns; --9500 ns
	DATA_IN <= "0000000001100000";
    wait for 100 ns; --9600 ns
	DATA_IN <= "0000000001100001";
    wait for 100 ns; --9700 ns
	DATA_IN <= "0000000001100010";
    wait for 100 ns; --9800 ns
	DATA_IN <= "0000000001100011";
    wait for 100 ns; --9900 ns
	DATA_IN <= "0000000001100100";
    wait for 100 ns; --10 us
	DATA_IN <= "0000000001100101";
    wait for 100 ns; --10100 ns
	DATA_IN <= "0000000001100110";
    wait for 100 ns; --10200 ns
	DATA_IN <= "0000000001100111";
    wait for 100 ns; --10300 ns
	DATA_IN <= "0000000001101000";
    wait for 100 ns; --10400 ns
	DATA_IN <= "0000000001101001";
    wait for 100 ns; --10500 ns
	DATA_IN <= "0000000001101010";
    wait for 100 ns; --10600 ns
	DATA_IN <= "0000000001101011";
    wait for 100 ns; --10700 ns
	DATA_IN <= "0000000001101100";
    wait for 100 ns; --10800 ns
	DATA_IN <= "0000000001101101";
    wait for 100 ns; --10900 ns
	DATA_IN <= "0000000001101110";
	END_SIM <= TRUE;
--	end of stimulus events
	wait;
end process; -- end of stimulus process
	
CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0, 1 50000 -r 100000
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 50 ns; --0 ps
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 50 ns; --50 ns
	else
		wait;
	end if;
end process;

WRITE_TO_FILE: WRITE_RESULTS(CLK,RESET,START,CODE,DATA_IN,OVL,Q_OUT);

end TB_ARCHITECTURE;
