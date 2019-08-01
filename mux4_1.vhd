library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity mux4_1 is
 port(a: in std_logic_vector(3 downto 0);
      s: in std_logic_vector(1 downto 0);
	  y: out std_logic);
end mux4_1;

architecture rtl of mux4_1 is
begin
  process(a,s)
  begin
    case s is
	  when "00" => y <= a(0);
	  when "01" => y <= a(1);
	  when "10" => y <= a(2);
	  when others => y <= a(3);
	end case;
  end process;
end rtl;
