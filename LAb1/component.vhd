LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

package components is
component fadd is
port (a, b, ci: IN std_logic;
co, sum: out std_logic);
end component;
end components;