library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity matrix_mul is
    port (
        x : in std_logic_vector(3 downto 0);
        y : in std_logic_vector(3 downto 0);
        z : out std_logic_vector(7 downto 0)
    );
end entity;

architecture structure of matrix_mul is

    signal stage1 : std_logic_vector(3 downto 0);
    signal stage2 : std_logic_vector(3 downto 0);
    signal stage3 : std_logic_vector(3 downto 0);
    signal stage4 : std_logic_vector(3 downto 0);

    signal stage1_s : std_logic_vector(2 downto 0);
    signal stage1_co : std_logic_vector(3 downto 0);

    signal stage2_s : std_logic_vector(2 downto 0);
    signal stage2_co : std_logic_vector(3 downto 0);

    signal stage3_co : std_logic_vector(2 downto 0);

begin

    z(0) <= stage1(0);

    stage_one: for i in 0 to 3 generate
        stage1(i) <= x(i) and y(0);
    end generate;

    stage_two: for i in 0 to 3 generate
        stage2(i) <= x(i) and y(1);
    end generate;

    stage1_ha1: entity work.half_adder(rtl)
    port map (
        a => stage1(1),
        b => stage2(0),        
        s => z(1),
        co => stage1_co(0)
    );

    stage1_va1: entity work.full_adder(min_dnf)
    port map (
        a => stage1(2),
        b => stage2(1),        
        ci => stage1_co(0),
        s => stage1_s(0),
        co => stage1_co(1)
    );

    stage1_va2: entity work.full_adder(min_dnf)
    port map (
        a => stage1(3),
        b => stage2(2),        
        ci => stage1_co(1),
        s => stage1_s(1),
        co => stage1_co(2)
    );

    stage1_ha2: entity work.half_adder(rtl)
    port map (
        a => stage2(3),
        b => stage1_co(2),        
        s => stage1_s(2),
        co => stage1_co(3)
    );

    stage_three: for i in 0 to 3 generate
        stage3(i) <= x(i) and y(2);
    end generate;

    stage2_ha1: entity work.half_adder(rtl)
    port map (
        a => stage3(0),
        b => stage1_s(0),        
        s => z(2),
        co => stage2_co(0)
    );

    stage2_va1: entity work.full_adder(min_dnf)
    port map (
        a => stage3(1),
        b => stage1_s(1),        
        ci => stage2_co(0),
        s => stage2_s(0),
        co => stage2_co(1)
    );

    stage2_va2: entity work.full_adder(min_dnf)
    port map (
        a => stage3(2),
        b => stage1_s(2),        
        ci => stage2_co(1),
        s => stage2_s(1),
        co => stage2_co(2)
    );

    stage2_va3: entity work.full_adder(min_dnf)
    port map (
        a => stage3(3),
        b => stage1_co(3),        
        ci => stage2_co(2),
        s => stage2_s(2),
        co => stage2_co(3)
    );

    stage_four: for i in 0 to 3 generate
        stage4(i) <= x(i) and y(3);
    end generate;

    stage3_ha1: entity work.half_adder(rtl)
    port map (
        a => stage4(0),
        b => stage2_s(0),        
        s => z(3),
        co => stage3_co(0)
    );

    stage3_va1: entity work.full_adder(min_dnf)
    port map (
        a => stage4(1),
        b => stage2_s(1),        
        ci => stage3_co(0),
        s => z(4),
        co => stage3_co(1)
    );

    stage3_va2: entity work.full_adder(min_dnf)
    port map (
        a => stage4(2),
        b => stage2_s(2),        
        ci => stage3_co(1),
        s => z(5),
        co => stage3_co(2)
    );

    stage3_va3: entity work.full_adder(min_dnf)
    port map (
        a => stage4(3),
        b => stage2_co(3),        
        ci => stage3_co(2),
        s => z(6),
        co => z(7)
    );

end architecture;
