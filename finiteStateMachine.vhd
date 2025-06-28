library ieee;
use ieee.std_logic_1164.all;

ENTITY finiteStateMachine IS
	PORT(	clk : IN STD_LOGIC;
			data_in : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			student_id : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			current_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
END ENTITY;

ARCHITECTURE fsm of finiteStateMachine IS
	type state_type IS (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	signal ysfm : state_type;
BEGIN
	PROCESS(clk, reset)
	BEGIN
		IF reset = '1' THEN
			ysfm <= s0;
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE ysfm IS
				WHEN s0 =>
					IF data_in = '1' THEN
						ysfm <= s1;
					ELSE
						ysfm <= s0;
					END IF;
				WHEN s1 =>
					IF data_in = '1' THEN
						ysfm <= s2;
					ELSE
						ysfm <= s1;
					END IF;
				WHEN s2 =>
					IF data_in = '1' THEN
						ysfm <= s3;
					ELSE
						ysfm <= s2;
					END IF;
				WHEN s3 =>
					IF data_in = '1' THEN
						ysfm <= s4;
					ELSE
						ysfm <= s3;
					END IF;
				WHEN s4 =>
					IF data_in = '1' THEN
						ysfm <= s5;
					ELSE
						ysfm <= s4;
					END IF;
				WHEN s5 =>
					IF data_in = '1' THEN
						ysfm <= s6;
					ELSE
						ysfm <= s5;
					END IF;
				WHEN s6 =>
					IF data_in = '1' THEN
						ysfm <= s7;
					ELSE
						ysfm <= s6;
					END IF;
				WHEN s7 =>
					IF data_in = '1' THEN
						ysfm <= s8;
					ELSE
						ysfm <= s7;
					END IF;
				WHEN s8 =>
					IF data_in = '1' THEN
						ysfm <= s0;
					ELSE
						ysfm <= s8;
					END IF;
			END CASE;
		END IF;
	END PROCESS;
	-- IMPLEMENTING MOORE LOGIC
	PROCESS (ysfm, data_in)
	BEGIN
		CASE ysfm IS
			WHEN s0 =>
				student_id <= "0101";--5
				current_state <= "0000";--0
			WHEN s1 =>
				student_id <= "0000";--0
				current_state <= "0001";--1
			WHEN s2 =>
				student_id <= "0001";--1
				current_state <= "0010";--2
			WHEN s3 =>
				student_id <= "0000";--0
				current_state <= "0011";--3
			WHEN s4 =>
				student_id <= "0011";--3
				current_state <= "0100";--4
			WHEN s5 =>
				student_id <= "0001";--1
				current_state <= "0101";--5
			WHEN s6 =>
				student_id <= "0000";--0
				current_state <= "0110";--6
			WHEN s7 =>
				student_id <= "0010";--2
				current_state <= "0111";--7
			WHEN s8 =>
				student_id <= "0111";--7
				current_state <= "1000";--8
			WHEN OTHERS =>
				student_id <= "1110";--E
				current_state <= "1110";--E
		END CASE;
	END PROCESS;
END fsm;