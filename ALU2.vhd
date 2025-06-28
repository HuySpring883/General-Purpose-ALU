LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.NUMERIC_STD.all;

ENTITY ALU2 IS
	PORT( Clock : IN STD_LOGIC;--input clock signal
			A, B	: IN UNSIGNED(7 DOWNTO 0);--8 bit inputs from latches A and B
			student_id : IN UNSIGNED(3 downto 0);--4 bit student id from FSM
			OP	: IN UNSIGNED(15 DOWNTO 0);--16 bit selector for Operation from Decoder
			Neg : OUT STD_LOGIC;--is the result negative ? Set-ve bit output
			R1	: OUT UNSIGNED(3 DOWNTO 0);--lower 4 bits of 8 bit Result Output
			R2	: OUT UNSIGNED(3 DOWNTO 0));--higher 4 bits of 8 bit Result Output
END ALU2;

ARCHITECTURE calculation OF ALU2 IS--temporary signal declarations
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
						Result <= Reg2(0)&Reg2(1)&Reg2(2)&Reg2(3)&Reg2(4)&Reg2(5)&Reg2(6)&Reg2(7);
						--Invert the bit-significance order of A
					WHEN "0000000000000010" => 
						Result <= Reg1(3 DOWNTO 0)&"1111";
						--Shift A to left by 4 bits, input bit = 1 (SHL)
					WHEN "0000000000000100" => 
						Result <= NOT(Reg1-4);
						--Invert upper four bits of B
					WHEN "0000000000001000" => 
						IF(Reg1 < Reg2) THEN
							Result <= Reg1;
						ELSE
							Result <= Reg2;
						END IF;
						--Find the smaller value of A and B and produce the results (Min(A, B))
					WHEN "0000000000010000" => 
						Result <= (Reg1+Reg2)+4;
						--Calculate the summation of A and B and increase it by 4
					WHEN "0000000000100000" => 
						Result <= Reg1+3;
						--Increment A by 3
					WHEN "0000000001000000" => 
						Result <= (Reg1 AND "01010101")OR(Reg2 AND "10101010");
						--Replace the even bits of A with even bits of B
					WHEN "0000000010000000" => 
						Result <= Reg1 XNOR Reg2;
						--Produce the result of XNORing A and B
					WHEN "0000000100000000" => 
						Result <= Reg2(2 DOWNTO 0)&Reg2(7 DOWNTO 3);
						--Rotate B to right by 3 bits (ROR)
					WHEN OTHERS => 
						Result <= Reg1 + Reg2;--Don't care, do nothing
				END CASE;
			END IF;
		END PROCESS;
	R1 <= Result(3 DOWNTO 0);--Since the output seven segments can
	R2 <= Result(7 DOWNTO 4);--Only 4 bits, split the 8 bit to 4 bits
END calculation;
					