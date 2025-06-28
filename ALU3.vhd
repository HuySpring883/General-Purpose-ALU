LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.NUMERIC_STD.all;

ENTITY ALU3 IS
	PORT( Clock : IN STD_LOGIC;--input clock signal
			A, B	: IN UNSIGNED(7 DOWNTO 0);--8 bit inputs from latches A and B
			student_id : IN UNSIGNED(3 downto 0);--4 bit student id from FSM
			OP	: IN UNSIGNED(15 DOWNTO 0);--16 bit selector for Operation from Decoder
			Result	: OUT UNSIGNED(3 DOWNTO 0));
END ALU3;

ARCHITECTURE calculation OF ALU3 IS--temporary signal declarations
	signal Reg1, Reg2, Res: unsigned(7 DOWNTO 0) := (OTHERS => '0');
	signal Reg4 : unsigned(0 to 7);
	BEGIN
		Reg1 <= A;--temporarily store A in Reg1 local variable
		Reg2 <= B;--temporarily store B in Reg2 local variable
		PROCESS(Clock, OP)
		BEGIN
			IF(rising_edge(Clock)) THEN--Do the calculation @ positive edge of clock cycle
				CASE OP IS
					WHEN "0000000000000001" => 
						Res <= Reg1+Reg2;
					WHEN "0000000000000010" => 
						Res <= Reg1-Reg2;
					WHEN "0000000000000100" => 
						Res <= NOT Reg1;
					WHEN "0000000000001000" => 
						Res <= Reg1 NAND Reg2;
					WHEN "0000000000010000" => 
						Res <= Reg1 NOR Reg2;
					WHEN "0000000000100000" => 
						Res <= Reg1 AND Reg2;
					WHEN "0000000001000000" => 
						Res <= Reg1 OR Reg2;
					WHEN "0000000010000000" => 
						Res <= Reg1 XOR Reg2;
					WHEN "0000000100000000" => 
						Res <= Reg1 XNOR Reg2;
					WHEN OTHERS => 
						Res <= Reg1 + Reg2;--Don't care, do nothing
				END CASE;
			END IF;
		END PROCESS;
	Result <= Res(3 DOWNTO 0);--Since the output seven segments can
END calculation;
					