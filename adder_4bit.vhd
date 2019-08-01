library ieee;
use ieee.std_logic_1164.all;

entity adder_4bit is
  port (a, b: in std_logic_vector (3 downto 0);
        sum: out std_logic_vector (3 downto 0);
        cout: out std_logic);
end adder_4bit;

architecture struct of adder_4bit is
    component full_adder 
    port (a, b, cin: in std_logic;
          sum, cout: out std_logic);
  end component;
  
  
  component half_adder
    port (a, b: in std_logic;
          sum, cout: out std_logic);
  end component;
    signal c: std_logic_vector(2 downto 0);
begin
  u0: half_adder port map (a(0),b(0),sum(0),c(0));
  u1: full_adder port map (a(1),b(1),c(0),sum(1),c(1));
  u2: full_adder port map (a(2),b(2),c(1),sum(2),c(2));
  u3: full_adder port map (a(3),b(3),c(2),sum(3),cout);
end struct;
