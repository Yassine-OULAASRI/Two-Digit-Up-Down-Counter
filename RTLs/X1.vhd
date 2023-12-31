-------------Up Down BCD Counter and Debouncer: RTL-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity X1 is
    Port ( CLK_F : in STD_LOGIC;
           C : in STD_LOGIC;
           U_D : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Q1s : out STD_LOGIC_VECTOR (3 downto 0);
           Q10s : out STD_LOGIC_VECTOR (3 downto 0));
end X1;


architecture RTL of X1 is

    signal sQ1s : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal sQ10s : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal D1, D2, D3, C_deb : STD_LOGIC;

begin
	
	process (CLK_F)
	begin
		if CLK_F'event and CLK_F = '1' then
			D1 <= C;
			D2 <= D1;
			D3 <= D2;
		end if;
	end process;
	C_deb <= D1 and D2 and D3;

	process (RESET, C_deb, U_D)
	begin
        if RESET = '1' then
            sQ1s <= "0000";
            sQ10s <= "0000";
        elsif U_D = '0' and C_deb = '1' then 
            if sQ1s = "1001" then
                sQ1s <= "0000";
                if sQ10s = "1001" then
                    sQ10s <= "0000";
                else
                    sQ10s <= sQ10s + 1;
                end if;
            else
                sQ1s <= sQ1s + 1;
            end if;
        elsif U_D = '1' and C_deb = '1' then
            if sQ1s = "0000" then
                sQ1s <= "1001";
                if sQ10s = "0000" then
                    sQ10s <= "1001";
                else
                    sQ10s <= sQ10s - 1;
                end if;
            else
                sQ1s <= sQ1s - 1;
            end if;
		end if;
	end process;
	Q1s <= sQ1s;
	Q10s <= sQ10s;
	
end RTL;
