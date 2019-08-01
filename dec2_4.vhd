library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity dec2_4 is
  port(a: in std_logic_vector(1 downto 0);
       y: out std_logic_vector(3 downto 0));
end dec2_4 ;

architecture rtl of dec2_4 is
begin
  process (a)
  begin
    if (a = "11") then y <= "1000";
    elsif (a = "10") then y <= "0100";
    elsif (a = "01") then y <= "0010";
    else y <= "0001";
    end if;
  end process;
end rtl;
