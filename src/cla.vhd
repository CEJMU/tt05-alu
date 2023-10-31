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
    
begin
    
    -- HACK: 
    c(0) <= x(0) xor x(0);
    

    ge: for i in 1 to 4 generate
        gen(i) <= x(i-1) and y(i-1);
    end generate;
    
    prop: for i in 1 to 4 generate
        pro(i) <= x(i-1) xor y(i-1);
    end generate;
    
    ci: for i in 1 to 4 generate
        c(i) <= gen(i) or (pro(i) and c(i-1));
    end generate;
    
    si: for i in 1 to 4 generate
        s(i) <= pro(i) xor c(i-1);
    end generate;
    
    zi: for i in 0 to 3 generate
        z(i) <= s(i+1);
    end generate;  
    
   -- z(0) <= s(1);
   -- z(1) <= s(2);
   -- z(2) <= s(3);
   -- z(3) <= s(4);
    
    z(4) <= c(4);
    
    
    
    

end architecture rtl;
