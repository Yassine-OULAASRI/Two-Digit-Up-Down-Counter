
-------------Digits Count Multiplexer: Test Bench-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity X2_tb is
--  Port ( );
end X2_tb;

architecture Behavioral of X2_tb is
        
    -- Component Declaration for the Unit Under Test (UUT)
    component X2
        Port ( D1s  : in STD_LOGIC_VECTOR (3 downto 0);
               D10s : in STD_LOGIC_VECTOR (3 downto 0);
               S    : in STD_LOGIC;
               D    : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --Inputs
    signal sD1s     : std_logic_vector(3 downto 0):= (others => '0');
    signal sD10s    : std_logic_vector(3 downto 0):= (others => '0');
    signal sS       : std_logic := '0';
    
    --Outputs
    signal sD       : std_logic_vector(3 downto 0);

begin
    
    -- Instantiate the Unit Under Test (UUT)
    uut: X2 port map (
        D1s     => sD1s,
        D10s    => sD10s,
        S       => sS,
        D       => sD
    );
    
    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        
        -- insert stimuli here
        sD1s <= "0001";
        sD10s <= "0101";
        sS <= '0';
        wait for 200 ns;
        sS <= '1';
        wait for 200 ns;
        sS <= '0';
        wait for 200 ns;
        sS <= '1';
        wait for 200 ns;
        sS <= '0';
        wait for 200 ns;
        sS <= '1';
        wait for 200 ns;
        
        wait;
    end process;
    
end Behavioral;
