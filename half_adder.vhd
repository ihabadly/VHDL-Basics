library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
  port (a, b: in std_logic;
        sum, cout: out std_logic);
end half_adder;

architecture rtl of half_adder is
begin
  sum <= a xor b;
  cout <= a and b;
end rtl;
