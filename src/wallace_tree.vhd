library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wallace_tree is
    port(
        x : in std_logic_vector(3 downto 0);
        y : in std_logic_vector(3 downto 0);
        z : out std_logic_vector(7 downto 0)
    );
end entity wallace_tree;

architecture structure of wallace_tree is
    
    signal stage_1: std_logic_vector(3 downto 0);
    signal stage_2: std_logic_vector(3 downto 0);
    signal stage_3: std_logic_vector(3 downto 0);
    signal stage_4: std_logic_vector(3 downto 0);
    
    signal stage_5: std_logic_vector(7 downto 0);
    signal stage_6: std_logic_vector(7 downto 0);
    
    signal vec_1: std_logic_vector(3 downto 0);
    signal vec_2: std_logic_vector(3 downto 0);
    
    component full_adder is
        port(
            a : in std_logic;
            b : in std_logic;
            ci : in std_logic;
            
            s : out std_logic;
            co : out std_logic
        );
    end component;
    
    component half_adder is
        port(
            a : in std_logic;
            b : in std_logic;
            
            s : out std_logic;
            co : out std_logic
        );
    end component;
    
    
begin
    
    stage_one: for i in 0 to 3 generate
        stage_1(i) <= x(i) and y(0);
    end generate;
    
    stage_two: for i in 0 to 3 generate
        stage_2(i) <= x(i) and y(1);
    end generate;
    
    stage_three: for i in 0 to 3 generate
        stage_3(i) <= x(i) and y(2);
    end generate;
    
    stage_four: for i in 0 to 3 generate
        stage_4(i) <= x(i) and y(3);
    end generate;
    
    
    f1: full_adder port map(a => stage_1(2) , b=>stage_2(1), ci=>stage_3(0), s=>stage_5(2), co=>stage_5(3));
    f2: full_adder port map(a=>stage_1(3), b=>stage_2(2), ci=>stage_3(1), s=>stage_5(4), co=>stage_5(5));
    f3: full_adder port map(a=>stage_5(3), b=>stage_5(4), ci=>stage_4(0), s=>stage_6(1), co=>stage_6(2));
    f4: full_adder port map(a=>stage_5(5), b=>stage_5(6), ci=>stage_4(1), s=>stage_6(3), co=>stage_6(4));
    f5: full_adder port map(a=>stage_5(7), b=>stage_3(3), ci=>stage_4(2), s=>stage_6(5), co=>stage_6(6));
    
    h1: half_adder port map(a=> stage_1(1), b=> stage_2(0), s=> stage_5(0),co=>stage_5(1));
    h2: half_adder port map(a=> stage_2(3), b=> stage_3(2), s=> stage_5(6),co=> stage_5(7));
    h3: half_adder port map(a=> stage_5(1), b=> stage_5(2), s=> z(2),co=> stage_6(0));
    
    stage_6(7) <= stage_4(3);
    z(0) <= stage_1(0);
    z(1) <= stage_5(0);
    
    vec_1 <= stage_6(7) & stage_6(5) & stage_6(3) & stage_6(1);
    vec_2 <= stage_6(6) & stage_6(4) & stage_6(2) & stage_6(0);
    
    
    cla_adder: entity work.cla(rtl)
     port map (
         x => vec_1,
         y => vec_2,
         z => z(7 downto 3)
     );

    -- z(7 downto 3) <= std_logic_vector(Unsigned('0' & vec_1) + Unsigned('0' & vec_2));
    
end architecture structure;
