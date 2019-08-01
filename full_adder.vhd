library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity full_adder is
    port (a, b, cin: in std_logic; 
          sum, cout: out std_logic);
  end full_adder;
  
architecture rtl of full_adder is
  signal sum1, c1, c2: std_logic;
begin
  sum1 <= a xor b;
  c1 <= a and b;
  sum <= sum1 xor cin;
  c2 <= sum1 and cin;
  cout <= c1 or c2;
end rtl;
