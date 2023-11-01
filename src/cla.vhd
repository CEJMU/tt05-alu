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
    signal c: std_logic_vector(4 downto 0);
    signal s: std_logic_vector(4 downto 1);
    signal c1: std_logic_vector(3 downto 0);
    
begin
    
    c(0) <= '0';
    
    --ge: for i in 1 to 4 generate
    --    gen(i) <= x(i-1) and y(i-1);
    --end generate;

    gen(1) <= x(0) and y(0);
    gen(2) <= x(1) and y(1);
    gen(3) <= x(2) and y(2);
    gen(4) <= x(3) and y(3);


    
    --prop: for i in 1 to 4 generate
    --    pro(i) <= x(i-1) xor y(i-1);
    --end generate;

    pro(1) <= x(0) xor y(0);
    pro(2) <= x(1) xor y(1);
    pro(3) <= x(2) xor y(2);
    pro(4) <= x(3) xor y(3);

    


    --ci: for i in 1 to 4 generate
    --    c(i) <= gen(i) or (pro(i) and c(i-1));
    --end generate;

    c1(0) <= pro(1) and c(0);
    c1(1) <= pro(2) and c(1);
    c1(2) <= pro(3) and c(2);
    c1(3) <= pro(4) and c(3);

    c(1) <= gen(1) or c1(0);
    c(2) <= gen(2) or c1(1);
    c(3) <= gen(3) or c1(2);
    c(4) <= gen(4) or c1(3);

    
    --si: for i in 1 to 4 generate
    --    s(i) <= pro(i) xor c(i-1);
    --end generate;


    z(0) <= pro(1) xor c(0);
    z(1) <= pro(2) xor c(1);
    z(2) <= pro(3) xor c(2);
    z(3) <= pro(4) xor c(3);
    
    --zi: for i in 0 to 3 generate
    --    z(i) <= s(i+1);
    --end generate;      
    z(4) <= c(4);

end architecture rtl;
