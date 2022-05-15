LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity register is port (
	D: in bit_vector(3 downto 0);
	clk: in bit;
	clr: in bit;
	Q: out bit_vector(3 downto 0));
end register;


ARCHITECTURE behavioral OF register IS
BEGIN
	PROCESS (clr, clk)
	BEGIN
		IF clr = '0' THEN
		Q <= "00000000";
	ELSIF rising_edge(clk) THEN
		Q <= D;
	END IF;
	END PROCESS;
END behavioral;