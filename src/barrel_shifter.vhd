library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity barrel_shifter is
    port(
        x : in STD_LOGIC_VECTOR(3 downto 0);
        y : in STD_LOGIC_VECTOR(2 downto 0);
        
        z : out STD_LOGIC_VECTOR(3 downto 0)
        

    );
end entity barrel_shifter;

architecture rtl of barrel_shifter is
    
    COMPONENT Multiplexer IS
        port (
            a  : in STD_LOGIC_VECTOR(7 downto 0);
            s0 : in STD_LOGIC;
            s1 : in STD_LOGIC;
            d  : in STD_LOGIC;
            y  : out STD_LOGIC
        );
    end component Multiplexer;
    
    signal mul0v : STD_LOGIC_VECTOR(7 downto 0);
    signal mul1v : STD_LOGIC_VECTOR(7 downto 0);
    signal mul2v : STD_LOGIC_VECTOR(7 downto 0);
    signal mul3v : STD_LOGIC_VECTOR(7 downto 0);

    
begin
    
    mul0v <= "000" & x(0) & x(3) & x(2) & x(1) & x(0);
    mul1v <= "00"& x(0) & x(1) & '0' & x(3) & x(2) & x(1); 
    mul2v <= '0' & x(0) & x(1) & x(2) & "00" & x(3) & x(2);
    mul3v <= x(0) & x(1) & x(2) & x(3) & "000" & x(3);
    

    
    mul0 : Multiplexer port map(a => mul0v,s0 => y(0), s1 => y(1), d => y(2), y =>z(0));
    mul1 : Multiplexer port map(a => mul1v,s0 => y(0), s1 => y(1), d => y(2), y =>z(1));
    mul2 : Multiplexer port map(a => mul2v,s0 => y(0), s1 => y(1), d => y(2), y =>z(2));
    mul3 : Multiplexer port map(a => mul3v,s0 => y(0), s1 => y(1), d => y(2), y =>z(3));
    

end architecture rtl;