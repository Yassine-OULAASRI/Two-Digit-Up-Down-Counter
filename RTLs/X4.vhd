-------------Frequency Divider and Digit Controller: RTL-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity X4 is
    Port ( CLK : in STD_LOGIC;
           F : out STD_LOGIC;
           CE1s : out STD_LOGIC;
           CE10s : out STD_LOGIC);
end X4;

architecture RTL of X4 is

    signal count : integer := 1;
    signal tmp : std_logic := '0';

begin
	process begin
	   wait until rising_edge(CLK);
	   count <= count + 1;
	   if (count = 250000) then
	       tmp <= NOT tmp;
	       count <= 1;
	   end if;
	   F <= tmp;
	   CE1s <= tmp;
	   CE10s <= NOT tmp;
	end process;


end RTL;
