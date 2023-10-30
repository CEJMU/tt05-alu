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

    signal adder_out : std_logic_vector(7 downto 0);
    signal mul_out : std_logic_vector(7 downto 0);
begin

    adder_out(7 downto 5) <= "000";
    adder_out(4 downto 0) <= std_logic_vector(unsigned('0' & a) + unsigned('0' & b));

    uo_out <= adder_out when opcode = "00"
            else mul_out when opcode = "01"
            else x"00";

    mul_out <= std_logic_vector(unsigned(a) * unsigned(b));

    uio_out <= (others => '0');
    uio_oe <= (others => '0');
end architecture;
