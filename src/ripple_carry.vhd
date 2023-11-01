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

    signal co0 : std_logic;
    signal co1 : std_logic;
    signal co2 : std_logic;

begin

    ad0: entity work.half_adder(rtl)
    port map(
        a => a(0),
        b => b(0),
        s => s(0),
        co => co0
    );

    ad1: entity work.full_adder(min_dnf)
    port map(
        a => a(1),
        b => b(1),
        ci => co0,
        s => s(1),
        co => co1
    );

    ad2: entity work.full_adder(min_dnf)
    port map(
        a => a(2),
        b => b(2),
        ci => co1,
        s => s(2),
        co => co2
    );

    ad3: entity work.full_adder(min_dnf)
    port map(
        a => a(3),
        b => b(3),
        ci => co2,
        s => s(3),
        co => s(4)
    );

end architecture;
