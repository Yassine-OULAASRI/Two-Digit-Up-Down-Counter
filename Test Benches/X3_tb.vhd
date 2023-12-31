
-------------BCD to 7-Segment Decoder: Test Bench-------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity X3_tb is
--  Port ( );
end X3_tb;

architecture Behavioral of X3_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component X3
        Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
               SEG : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

    --Inputs
    signal sBCD     : std_logic_vector(3 downto 0):= (others => '0');
    
    --Outputs
    signal sSEG     : std_logic_vector(6 downto 0):= (others => '0');

begin
    
    -- Instantiate the Unit Under Test (UUT)
    uut: X3 port map (
        BCD     => sBCD,
        SEG     => sSEG
    );
    
    -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;
        
        -- insert stimuli here
        sBCD <= "0001";
        wait for 200 ns;
        sBCD <= "0101";
        wait for 200 ns;
        sBCD <= "0110";
        wait for 200 ns;
        sBCD <= "1000";
        wait for 200 ns;
        
        wait;    
    end process;

end Behavioral;
