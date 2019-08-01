library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity count_bin_tb is
end count_bin_tb ;

architecture behav of count_bin_tb is
  constant clockperiod: time:=100 ns;
  signal clk: std_logic:='0';
  signal rst: std_logic;
  signal count: std_logic_vector(3 downto 0);
  component count_bin is
   port(clk, rst: in std_logic;
      count: out std_logic_vector (3 downto 0));
  end component ;
  begin
    clk <= not clk after clockperiod /2;
    rst <= '1' , '0' after 70 ns;
    dut:count_bin port map(clk, rst, count);
  end behav;