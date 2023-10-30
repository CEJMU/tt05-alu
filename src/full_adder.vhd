library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is
    port(
        a : in std_logic;
        b : in std_logic;
        ci : in std_logic;
        
        s : out std_logic;
        co : out std_logic
    );
end entity;

architecture min_dnf of full_adder is
begin
    co <= (a and b) or (a and ci) or (b and ci);
    s <= (a and (not b) and (not ci)) or ((not a) and (not b) and ci) or ((not a) and b and (not ci)) or (a and b and ci);
end architecture;
