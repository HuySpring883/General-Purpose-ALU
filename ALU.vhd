LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.NUMERIC_STD.all;

ENTITY ALU IS
	PORT( Clock : IN STD_LOGIC;--input clock signal
			A, B	: IN UNSIGNED(7 DOWNTO 0);--8 bit inputs from latches A and B
			student_id : IN UNSIGNED(3 downto 0);--4 bit student id from FSM
			OP	: IN UNSIGNED(15 DOWNTO 0);--16 bit selector for Operation from Decoder
			Neg : OUT STD_LOGIC;--is the result negative ? Set-ve bit output
			R1	: OUT UNSIGNED(3 DOWNTO 0);--lower 4 bits of 8 bit Result Output
			R2	: OUT UNSIGNED(3 DOWNTO 0));--higher 4 bits of 8 bit Result Output
END ALU;

ARCHITECTURE calculation OF ALU IS--temporary signal declarations
	signal Reg1, Reg2, Result: unsigned(7 DOWNTO 0) := (OTHERS => '0');
	signal Reg4 : unsigned(0 to 7);
	BEGIN
		Reg1 <= A;--temporarily store A in Reg1 local variable
		Reg2 <= B;--temporarily store B in Reg2 local variable
		PROCESS(Clock, OP)
		BEGIN
			IF(rising_edge(Clock)) THEN--Do the calculation @ positive edge of clock cycle
				CASE OP IS
					WHEN "0000000000000001" => 
						Result <= Reg1+Reg2;--Do Addition for Reg1 and Reg2
					WHEN "0000000000000010" => 
						Result <= Reg1-Reg2;--Do Subtraction, "Neg" bit set if required
					WHEN "0000000000000100" => 
						Result <= NOT Reg1;--Do Inverse
					WHEN "0000000000001000" => 
						Result <= Reg1 NAND Reg2;--Do Boolean NAND
					WHEN "0000000000010000" => 
						Result <= Reg1 NOR Reg2;--Do Boolean NOR
					WHEN "0000000000100000" => 
						Result <= Reg1 AND Reg2;--Do Boolean AND
					WHEN "0000000001000000" => 
						Result <= Reg1 OR Reg2;--Do Boolean OR
					WHEN "0000000010000000" => 
						Result <= Reg1 XOR Reg2;--Do Boolean XOR
					WHEN "0000000100000000" => 
						Result <= Reg1 XNOR Reg2;--DO Boolean XNOR
					WHEN OTHERS => 
						Result <= Reg1 + Reg2;--Don't care, do nothing
				END CASE;
			END IF;
		END PROCESS;
	R1 <= Result(3 DOWNTO 0);--Since the output seven segments can
	R2 <= Result(7 DOWNTO 4);--Only 4 bits, split the 8 bit to 4 bits
END calculation;
					