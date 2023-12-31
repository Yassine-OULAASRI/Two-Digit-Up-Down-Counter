
-------------Frequency Divider and Digit Controller: Test Bench-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity X4_tb is
--  Port ( );
end X4_tb;

architecture Behavioral of X4_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component X4
        Port ( CLK : in STD_LOGIC;
               F : out STD_LOGIC;
               CE1s : out STD_LOGIC;
               CE10s : out STD_LOGIC);
    end component;

    --Inputs
    signal sCLK     : std_logic := '0';
    
    --Outputs
    signal sF       : std_logic;
    signal sCE1s    : std_logic;
    signal sCE10s   : std_logic;
     
    -- Clock period definitions
    constant CLK_period : time := 20 ns;

begin
    
    -- Instantiate the Unit Under Test (UUT)
    uut: X4 port map (
        CLK     => sCLK,
        F       => sF,
        CE1s    => sCE1s,
        CE10s   => sCE10s
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
    
        wait;
    end process;
    
end Behavioral;
