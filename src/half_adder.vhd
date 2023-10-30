library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is
    port(
        a : in std_logic;
        b : in std_logic;
        
        s : out std_logic;
        co : out std_logic
    );
end entity;

architecture rtl of half_adder is
begin
    co <= a and b;
    s <= (a and (not b)) or ((not a) and b);
end architecture;
