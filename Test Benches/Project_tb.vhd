
-------------Two Digit Up Down Counter Application: Test Bench-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Application_tb is
--  Port ( );
end Application_tb;

architecture Behavioral of Application_tb is
        
    -- Component Declaration for the Unit Under Test (UUT)
    component Application
        Port ( CLK : in STD_LOGIC;
               C : in STD_LOGIC;
               U_D : in STD_LOGIC;
               RESET : in STD_LOGIC;
               CE1s : out STD_LOGIC;
               CE10s : out STD_LOGIC;
               SEG : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    --Inputs
    signal sCLK: std_logic := '0';
    signal sC    : std_logic := '0';
    signal sU_D  : std_logic := '0';
    signal sRESET: std_logic := '0';
    
    --Outputs
    signal sCE1s  : std_logic;
    signal sCE10s  : std_logic;
    signal sSEG : std_logic_vector(6 downto 0);
    
    -- Clock period definitions
    constant CLK_period : time := 20 ns;
    
begin
    
    -- Instantiate the Unit Under Test (UUT)
    uut: Application port map (
        CLK     => sCLK,
        C       => sC,
        U_D     => sU_D,
        RESET   => sRESET,
        CE1s    => sCE1s,
        CE10s   => sCE10s,
        SEG     => sSEG
    );
     
    -- Clock process
    CLK_process :process
    begin
        sCLK <= '0';
        wait for CLK_period/2;
        sCLK <= '1';
        wait for CLK_period/2;
    end process;
    
    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        
        -- insert stimuli here
        sRESET <= '0';
        sU_D <= '0';
        sC <= '0';
        wait for 6 ms;
        sC <= '1';
        wait for 3 ms;
        sC <= '0';
        wait for 3 ms;
        sC <= '1';
        wait for 4 ms;
        sC <= '0';
        wait for 2 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 2 ms;
        sC <= '1';
        wait for 4 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        
        sU_D <= '1';
        wait for 60 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        
        sRESET <= '1';
        wait for 9 ms;
        sRESET <= '0';
        
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        wait for 50 ms;
        sC <= '1';
        wait for 50 ms;
        sC <= '0';
        
        
        wait;
    end process;

end Behavioral;
