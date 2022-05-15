LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY upcount IS PORT (
	Clear, Clock: IN STD_LOGIC;
	Q: OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END upcount;

ARCHITECTURE behavioral OF upcount IS
	SIGNAL Count: std_logic_vector(1 DOWNTO 0);
	BEGIN
		upcount: PROCESS (Clock)
		BEGIN
			IF rising_edge(Clock) THEN
				IF Clear = '1' THEN
					Count <= "00" ;
				ELSE
					Count <= Count + 1 ;
				END IF ;
			END IF;
		END PROCESS;
		Q <= Count;
END behavioral;

