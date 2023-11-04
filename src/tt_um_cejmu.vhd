library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tt_um_cejmu is
    port(
            ui_in   : in std_logic_vector(7 downto 0);
            uo_out  : out std_logic_vector(7 downto 0);
            uio_in  : in std_logic_vector(7 downto 0);
            uio_out : out std_logic_vector(7 downto 0);
            uio_oe  : out std_logic_vector(7 downto 0);
            ena     : in std_logic;
            clk     : in std_logic;
            rst_n   : in std_logic
    );
end entity;

architecture rtl of tt_um_cejmu is
    alias a : std_logic_vector(3 downto 0) is ui_in(3 downto 0);
    alias b : std_logic_vector(3 downto 0) is ui_in(7 downto 4);

    alias opcode : std_logic_vector(2 downto 0) is uio_in(2 downto 0);

    signal ripple_out : std_logic_vector(7 downto 0) := (others => '0');
    signal cla_out : std_logic_vector(7 downto 0) := (others => '0');
    signal matrix_out : std_logic_vector(7 downto 0) := (others => '0');
    signal wallace_out : std_logic_vector(7 downto 0) := (others => '0');

    signal comparator_out: std_logic_vector(7 downto 0);


begin


    uio_out <= (others => '0');
    uio_oe <= "00000000";
    ripple_out(7 downto 5) <= "000";
    cla_out(7 downto 5) <= "000";

    adder: entity work.ripple_carry(rtl)
    port map (
        a => a,
        b => b,
        s => ripple_out(4 downto 0)
    );

    cla: entity work.cla(rtl)
    port map (
        x => a,
        y => b,
        z => cla_out(4 downto 0)
    );

    matrix: entity work.matrix_mul(structure)
    port map (
        x => a,
        y => b,
        z => matrix_out
    );

    wallace: entity work.wallace_tree(structure)
    port map (
        x => a,
        y => b,
        z => wallace_out
    );

    four_bit_comparator: entity work.four_bit_comparator(rtl)
    port map(
    x => a,
    y => b,
    z => comparator_out
    );

    uo_out <= ripple_out when opcode = "000"
                else cla_out when opcode = "001"
                else matrix_out when opcode = "010"
                else wallace_out when opcode = "011"
                else comparator_out when opcode = "100"
                else (others =>'0');

end architecture;
