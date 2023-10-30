library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ripple_carry is
    port(
        a : in std_logic_vector(3 downto 0);
        b : in std_logic_vector(3 downto 0);

        s : out std_logic_vector(4 downto 0)
        );
end entity;

architecture rtl of ripple_carry is
    alias a0 : std_logic is a(0);
    alias a1 : std_logic is a(1);
    alias a2 : std_logic is a(2);
    alias a3 : std_logic is a(3);

    alias b0 : std_logic is b(0);
    alias b1 : std_logic is b(1);
    alias b2 : std_logic is b(2);
    alias b3 : std_logic is b(3);

    alias s0 : std_logic is s(0);
    alias s1 : std_logic is s(1);
    alias s2 : std_logic is s(2);
    alias s3 : std_logic is s(3);
    alias s4 : std_logic is s(4);

    signal co0 : std_logic;
    signal co1 : std_logic;
    signal co2 : std_logic;
begin

    ad0: entity work.half_adder(rtl)
    port map(
        a => a0,
        b => b0,
        s => s0,
        co => co0
    );

    ad1: entity work.full_adder(min_dnf)
    port map(
        a => a1,
        b => b1,
        ci => co0,
        s => s1,
        co => co1
    );

    ad2: entity work.full_adder(min_dnf)
    port map(
        a => a2,
        b => b2,
        ci => co1,
        s => s2,
        co => co2
    );

    ad3: entity work.full_adder(min_dnf)
    port map(
        a => a3,
        b => b3,
        ci => co2,
        s => s3,
        co => s4
    );

end architecture;
