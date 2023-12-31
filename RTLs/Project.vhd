-------------Two Digit Up Down Counter Application: RTL-------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Application is
    Port ( CLK : in STD_LOGIC;
           C : in STD_LOGIC;
           U_D : in STD_LOGIC;
           RESET : in STD_LOGIC;
           CE1s : out STD_LOGIC;
           CE10s : out STD_LOGIC;
           SEG : out STD_LOGIC_VECTOR (6 downto 0));
end Application;

architecture RTL of Application is

    component X1
        Port ( CLK_F : in STD_LOGIC;
               C : in STD_LOGIC;
               U_D : in STD_LOGIC;
               RESET : in STD_LOGIC;
               Q1s : out STD_LOGIC_VECTOR (3 downto 0);
               Q10s : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component X2
        Port ( D1s  : in STD_LOGIC_VECTOR (3 downto 0);
               D10s : in STD_LOGIC_VECTOR (3 downto 0);
               S    : in STD_LOGIC;
               D    : out STD_LOGIC_VECTOR (3 downto 0));
    end component;
    
    component X3
        Port ( BCD : in STD_LOGIC_VECTOR (3 downto 0);
               SEG : out STD_LOGIC_VECTOR (6 downto 0));
    end component;
    
    component X4
        Port ( CLK : in STD_LOGIC;
               F : out STD_LOGIC;
               CE1s : out STD_LOGIC;
               CE10s : out STD_LOGIC);
    end component;

signal F_S : STD_LOGIC := '0';
signal Q1s_D1s : STD_LOGIC_VECTOR (3 downto 0) := (others=>'0');
signal Q10s_D10s : STD_LOGIC_VECTOR (3 downto 0) := (others=>'0');
signal D_BCD : STD_LOGIC_VECTOR (3 downto 0) := (others=>'0');

begin

    X1_module : X1 port map (F_S, C, U_D, RESET, Q1s_D1s, Q10s_D10s);
    X2_module : X2 port map (Q1s_D1s, Q10s_D10s, F_S, D_BCD);
    X3_module : X3 port map (D_BCD, SEG);
    X4_module : X4 port map (CLK, F_S, CE1s, CE10s);
    
end RTL;
