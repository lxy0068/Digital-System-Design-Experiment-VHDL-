LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE work.components.all;

entity fadd4 is
port (a, b: in std_logic_vector(3 downto 0);
	ci: in std_logic;
	co: out std_logic;
	sum: out std_logic_vector(3 downto 0)
	);
end fadd4;

ARCHITECTURE stru OF fadd4 IS
SIGNAL ci_ns: std_logic_vector(2 DOWNTO 0); 
BEGIN
    U0: fadd PORT MAP (
        a => a(0),
        b => b(0),
        ci => ci,
        co => ci_ns(0),
        sum => sum(0)
    );

    U1: fadd PORT MAP (
        a => a(1),
        b => b(1),
        ci => ci_ns(0),
        co => ci_ns(1),
        sum => sum(1)
    );			

    U2: fadd PORT MAP (
        a => a(2),
        b => b(2),
        ci => ci_ns(1),
        co => ci_ns(2),
        sum => sum(2)
    );

    U3: fadd PORT MAP (
        a => a(3),
        b => b(3),
        ci => ci_ns(2),
        co => co,
        sum => sum(3)
    );
END stru;