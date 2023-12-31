-------------Digits Count Multiplexer: RTL-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity X2 is
    Port ( D1s : in STD_LOGIC_VECTOR (3 downto 0);
           D10s : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC;
           D : out STD_LOGIC_VECTOR (3 downto 0));
end X2;

architecture RTL of X2 is

begin

    process (S, D1s, D10s) 
    begin
        if S = '0' then 
            D <= D1s;
        elsif S = '1' then
            D <= D10s;
		else	
			D <= "0000";
		end if;
	end process;

end RTL;