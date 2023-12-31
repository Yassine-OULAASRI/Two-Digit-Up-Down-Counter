
-------------Up Down BCD Counter and Debouncer: Test Bench-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity X1_tb is
--  Port ( );
end X1_tb;

architecture Behavioral of X1_tb is
        
    -- Component Declaration for the Unit Under Test (UUT)
    component X1
        Port ( CLK_F : in STD_LOGIC;
               C : in STD_LOGIC;
               U_D : in STD_LOGIC;
               RESET : in STD_LOGIC;
               Q1s : out STD_LOGIC_VECTOR (3 downto 0);
               Q10s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;

    --Inputs
    signal sCLK_F: std_logic := '0';
    signal sC    : std_logic := '0';
    signal sU_D  : std_logic := '0';
    signal sRESET: std_logic := '0';
    
    --Outputs
    signal sQ1s  : std_logic_vector(3 downto 0);
    signal sQ10s : std_logic_vector(3 downto 0);
    
    -- Clock period definitions
    constant CLK_period : time := 10 ms;
    
begin
    
    -- Instantiate the Unit Under Test (UUT)
    uut: X1 port map (
        CLK_F   => sCLK_F,
        C       => sC,
        U_D     => sU_D,
        RESET   => sRESET,
        Q1s     => sQ1s,
        Q10s    => sQ10s
    );
     
    -- Clock process
    CLK_process :process
    begin
        sCLK_F <= '0';
        wait for CLK_period/2;
        sCLK_F <= '1';
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
