-- ==============================================================
-- File generated on Thu Feb 22 01:24:22 +0800 2024
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity run_fc1_bias_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 50
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of run_fc1_bias_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101101111001110111110101110", 
    1 => "10111101001001110010011000100010", 
    2 => "00111101111001001101000110001111", 
    3 => "00111101110110001000100111111011", 
    4 => "10111101101100111110110101010001", 
    5 => "10111101010101001101000011111110", 
    6 => "10111001111010101011111010011100", 
    7 => "00111011111100111111101011100001", 
    8 => "00111110000000010111100001100101", 
    9 => "00111101100111010011110101111101", 
    10 => "00111101100101010011011010011100", 
    11 => "00111101100011010010111010111111", 
    12 => "00111110001100111100010110100011", 
    13 => "00111100100111001111110000001000", 
    14 => "00111100101000001010100101000110", 
    15 => "00111100111111100101010000010111", 
    16 => "10111100011011110100000011111010", 
    17 => "00111101001100001100011000101100", 
    18 => "00111101010110101110010010110001", 
    19 => "10111101001001111100110010110100", 
    20 => "00111101101101000001110000101000", 
    21 => "10111100001110110001010110010110", 
    22 => "00111101000101100110110100001111", 
    23 => "00111101100001000010010111110001", 
    24 => "00111101100100111110011110011101", 
    25 => "00111101100011001101000011010000", 
    26 => "10111101001000001000110101101011", 
    27 => "00111101111110100111110011111110", 
    28 => "10111101101010010101010110011001", 
    29 => "10111100101100111010000000111110", 
    30 => "00111101100001100011001010100110", 
    31 => "00111101100001000100110001001101", 
    32 => "00111110001111011001111110010110", 
    33 => "00111100111011110011110011010000", 
    34 => "00111101100011100101011110101010", 
    35 => "10111100011110011011001000011001", 
    36 => "10111100110011111110000100011011", 
    37 => "00111101100101100011000010011111", 
    38 => "10111101100110100011100100111010", 
    39 => "00111100111110001101110011100010", 
    40 => "00111101111001101011001101110111", 
    41 => "10111100100100001011010011110100", 
    42 => "00111110000101000001100101000100", 
    43 => "00111001101100011100100111001000", 
    44 => "10111101101101011101110001000000", 
    45 => "00111101110101111100000101000001", 
    46 => "00111101110001110001001000011110", 
    47 => "00111101101010001011111100010011", 
    48 => "00111110001000011000100011100111", 
    49 => "00111101110100110101011001111110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity run_fc1_bias is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 50;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of run_fc1_bias is
    component run_fc1_bias_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    run_fc1_bias_rom_U :  component run_fc1_bias_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


