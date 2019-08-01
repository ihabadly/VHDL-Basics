library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity reg_par_shift is
  port (clk, rst: in std_logic;
        shift_right, shift_left: in std_logic;
        reg_in: in std_logic_vector(7 downto 0);
        reg_out: out std_logic_vector(7 downto 0));
end entity reg_par_shift;

architecture rtl of reg_par_shift is
  signal shift_control: std_logic_vector(1 downto 0);
  signal reg_temp: std_logic_vector(7 downto 0);
begin
  shift_control <= shift_left & shift_right;
  process (rst, clk)
  begin
    if (rst = '1') then
      reg_temp <= (others => '0');
    elsif (rising_edge(clk)) then
      case shift_control is
        when "00" => reg_temp <= reg_in;
        when "01" => reg_temp <= '0' & reg_temp(7 downto 1);
        when "10" => reg_temp <= reg_temp(6 downto 0) & '0';
        when others => reg_temp <= reg_temp; 
      end case;
    end if;
  end process;
  reg_out <= reg_temp;
end rtl;
