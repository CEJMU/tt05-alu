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

    -- NOTE: uio_in könnte schlecht sein
    alias opcode : std_logic_vector(1 downto 0) is uio_in(1 downto 0);

    signal ripple_out : std_logic_vector(7 downto 0);
    signal cla_out : std_logic_vector(7 downto 0);
    signal matrix_out : std_logic_vector(7 downto 0);
    signal wallace_out : std_logic_vector(7 downto 0);

begin

    uio_out <= (others => '0');
    uio_oe <= (others => '0');
    ripple_out(7 downto 5) <= "000";

    adder: entity work.ripple_carry(rtl)
    port map (
        a => a,
        b => b,
        s => ripple_out(4 downto 0)
    );

    wallace: entity work.wallace_tree(structure)
    port map (
        x => a,
        y => b,
        z => wallace_out
    );

    -- TODO: Reset
    process(clk) begin
        if rising_edge(clk) then
            with opcode select
            uo_out <=
                ripple_out when "00",
                cla_out when "01",
                matrix_out when "10",
                wallace_out when "11",
                (others => '0') when others;
        end if;
    end process;

end architecture;
