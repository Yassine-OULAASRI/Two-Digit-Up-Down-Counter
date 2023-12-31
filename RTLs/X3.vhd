-------------BCD to 7-Segment Decoder: RTL-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity X3 is
    Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
           SEG : out STD_LOGIC_VECTOR (6 downto 0));
end X3;

architecture RTL of X3 is

begin

    with BCD select
        SEG <= 
            "1000000" when x"0",
            "1111001" when x"1",
            "0100100" when x"2",
            "0110000" when x"3",
            "0011001" when x"4",
            "0010010" when x"5",
            "0000010" when x"6",
            "1111000" when x"7",
            "0000000" when x"8",
            "0010000" when x"9",
            "1000000" when others;

end RTL;
