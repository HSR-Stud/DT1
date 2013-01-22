LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY counter4 IS
	PORT(
		enable, up, clk: IN std_logic;
		output: OUT std_logic_vector(3 DOWNTO 0);
		carry2: OUT std_logic);
	END;

ARCHITECTURE structural OF counter4 IS
	
SIGNAL carry1, carry2: std_logic;
--carry2 ist ausgang grafik fehlerhaft
--desshalb in signal vorhanden
COMPONENT counter2_bidir
	PORT(
		ena, dir, clk: IN std_logic;
		carry: OUT std_logic;
		oup: OUT std_logic_vector(1 DOWNTO 0));
END COMPONENT;
	
	BEGIN
	
	inst1: counter2_bidir
	PORT MAP(
		ena => enable,
		dir => up,
		clk => clk,
		carry => carry1,
		oup => output(1 DOWNTO 0));
	
	inst2: counter2_bidir
	PORT MAP(
		ena => carry1,
		dir => up,
		clk => clk,
		carry => carry2,
		oup => output(3 DOWNTO 2));
END structural;