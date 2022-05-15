LIBRARY ieee; 
USE ieee.std_logic_1164.all;
 
entity flipflop is port ( 
  D: in bit;
  CLK: in bit; 
  Q: out bit);
end flipflop;


ARCHITECTURE behavioral OF flipflop IS 
BEGIN
  PROCESS (CLK) 
  BEGIN 
    IF CLK 'EVENT AND CLK = '1' THEN
      Q <= D ; 
    END IF ; 
  END PROCESS ; 
END behavioral;