library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity OneBitKomparator is
    port(
        e : in STD_LOGIC;
        x0 : in STD_LOGIC;
        y0 : in STD_LOGIC;
        
        greater: out STD_LOGIC;
        equal: out STD_LOGIC;
        smaller : out STD_LOGIC     
    );
end entity OneBitKomparator;

architecture rtl of OneBitKomparator is
begin

    greater <= (x0 and not (y0)) and e;
    equal <= (x0 xnor y0) and e;
    smaller <= (not(x0) and y0) and e;

end architecture rtl;