LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY fadd IS
PORT (a,b, ci: IN std_logic;
	co, sum: OUT std_logic
	);
END fadd;

architecture dataflow of fadd is
begin
co <= (a and b) or (b and ci) or (a and ci);
sum <= a xor b xor ci;
end dataflow;
