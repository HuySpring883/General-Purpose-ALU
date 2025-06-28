LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY sseg2 IS
	PORT(	bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			negative : IN STD_LOGIC;
			leds, ledss: OUT STD_LOGIC_VECTOR(7 DOWNTO 1));
END sseg2;

ARCHITECTURE Behavior OF sseg2 IS
BEGIN
	PROCESS(bcd)
	BEGIN
		CASE bcd IS
			WHEN "0000" => leds <= "0111011";-- 0 y
			WHEN "0001" => leds <= "0111011";-- 1 y
			WHEN "0010" => leds <= "0111011";-- 2 y
			WHEN "0011" => leds <= "0111011";-- 3 y
			WHEN "0100" => leds <= "0010101";-- 4 n
			WHEN "0101" => leds <= "0111011";-- 5 y
			WHEN "0110" => leds <= "0010101";-- 6 n
			WHEN "0111" => leds <= "0111011";-- 7 y
			WHEN "1000" => leds <= "0010101";-- 8 n
			WHEN "1001" => leds <= "0010101";-- 9 n
			WHEN "1010" => leds <= "0010101";-- A n
			WHEN "1011" => leds <= "0010101";-- b n
			WHEN "1100" => leds <= "0010101";-- C n
			WHEN "1101" => leds <= "0010101";-- d n
			WHEN "1110" => leds <= "0010101";-- E n
			WHEN "1111" => leds <= "0010101";-- F n
			WHEN OTHERS => leds <= "-------";-- Dont care
		END CASE;
	END PROCESS;
	
	PROCESS(negative)
	BEGIN
		IF (negative = '1') THEN
			ledss <= "0000001";-- negative sign
		ELSE
			ledss <= "0000000";-- positive sign
		END IF;
	END PROCESS;
END Behavior;