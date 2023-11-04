library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multiplexer is
    port(
        a : in STD_LOGIC_VECTOR(7 downto 0);
        s0: in STD_LOGIC;
        s1: in STD_LOGIC;
        d: in STD_LOGIC;
        
        y : out STD_LOGIC
    );
end entity multiplexer;


architecture rtl of multiplexer is

begin

    
    y <= a(0) when (s0= '0' and s1 = '0') and d ='0' else
    a(1) when (s0= '1' and s1 = '0') and d ='0' else
    a(2) when (s0= '0' and s1 = '1') and d ='0' else
    a(3) when (s0= '1' and s1 = '1') and d ='0' else

    a(0) when (s0= '0' and s1 = '0') and d ='1' else
    a(5) when (s0= '1' and s1 = '0') and d ='1' else
    a(6) when (s0= '0' and s1 = '1') and d ='1' else
    a(7);
    
    
    



end architecture rtl;