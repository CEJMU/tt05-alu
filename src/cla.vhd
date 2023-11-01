library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla is
    port(
        x : in std_logic_vector(3 downto 0);
        y : in std_logic_vector(3 downto 0);
        z : out std_logic_vector(4 downto 0)
    );
end entity cla;

architecture rtl of cla is
    
    signal gen: std_logic_vector(4 downto 1);
    signal pro: std_logic_vector(4 downto 1);
    signal c: std_logic_vector(3 downto 0);
    signal s: std_logic_vector(4 downto 1);
    signal c1: std_logic_vector(3 downto 0);
    
begin
    
    c(0) <= (x(0) and y(0)) or (((x(0) xor y(0)) and '0'));
    c(1) <= (x(1)and y(1)) or (((x(1) xor y(1)) and ((x(0) and y(0)) or ((x(0) xor y(0)) and '0'))));
    c(2) <= (x(2) and y(2)) or (((x(2) xor y(2)) and ((x(1)and y(1)) or ((x(1) xor y(1)) and ((x(0) and y(0)) or ((x(0) xor y(0)) and '0'))))));
    c(3) <= (x(3) and y(3)) or (((x(3) xor y(3)) and ((x(2) and y(2)) or ((x(2) xor y(2)) and ((x(1)and y(1)) or ((x(1) xor y(1)) and ((x(0) and y(0)) or ((x(0) xor y(0)) and '0'))))))));




    z(0) <= x(0) xor y(0) xor '0';
    z(1) <= x(1) xor y(1) xor c(0);
    z(2) <= x(2) xor y(2) xor c(1);
    z(3) <= x(3) xor y(3) xor c(2);
    z(4) <= c(3);

end architecture rtl;
