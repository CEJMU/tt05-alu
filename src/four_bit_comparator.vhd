library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity four_bit_comparator is
    port(
        
        x : in STD_LOGIC_VECTOR(3 downto 0);
        y : in STD_LOGIC_VECTOR(3 downto 0);
        z : out STD_LOGIC_VECTOR(7 downto 0)

    );
end entity four_bit_comparator;

architecture rtl of four_bit_comparator is

 
    signal greaterv: STD_LOGIC_VECTOR(3 downto 0);
    signal smallerv: STD_LOGIC_VECTOR(3 downto 0);
    signal equalv: STD_LOGIC_VECTOR(2 downto 0);
    
    signal greater : STD_LOGIC;
    signal smaller : STD_LOGIC;
    signal equal : STD_LOGIC;
    
    COMPONENT OneBitKomparator IS
        port (
            e       : in STD_LOGIC;
            x0      : in STD_LOGIC;
            y0      : in STD_LOGIC;
            greater : out STD_LOGIC;
            equal   : out STD_LOGIC;
            smaller : out STD_LOGIC
        );
    end component OneBitKomparator;
    
begin

    OneBitKomparator_1: OneBitKomparator port map(e => '1', x0 => x(3),y0 => y(3),greater => greaterv(3), equal => equalv(2), smaller => smallerv(3));
    OneBitKomparator_2: OneBitKomparator port map(e => equalv(2), x0 => x(2), y0 => y(2), greater => greaterv(2), equal => equalv(1), smaller => smallerv(2));
    OneBitKomparator_3: OneBitKomparator port map(e => equalv(1), x0 => x(1), y0 => y(1), greater => greaterv(1), equal => equalv(0), smaller => smallerv(1));
    OneBitKomparator_4: OneBitKomparator port map(e => equalv(0), x0 => x(0), y0 => y(0), greater => greaterv(0), equal => equal, smaller => smallerv(0));
    
    greater <= greaterv(0) or greaterv(1) or greaterv(2) or greaterv(3);
    smaller <= smallerv(0) or smallerv(1) or smallerv(2) or smallerv(3);
    
    
    z <= "00000" & equal & smaller & greater;

    
    
end architecture rtl;