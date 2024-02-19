-- ==============================================================
-- File generated on Sun Feb 18 10:30:08 +0800 2024
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DWT_filter_h_rom is 
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


architecture rtl of DWT_filter_h_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001101010000010011100110", 
    1 => "00111111001101010000010011100110", 
    2 to 9=> "00000000000000000000000000000000", 
    10 => "00111110111101110100011011101010", 
    11 => "00111111010101100010010111101111", 
    12 => "00111110011001011000010111111000", 
    13 => "10111110000001001000001111101110", 
    14 to 19=> "00000000000000000000000000000000", 
    20 => "00111110101010100101001111001011", 
    21 => "00111111010011101001000001110001", 
    22 => "00111110111010110111010100010000", 
    23 => "10111110000010100100000001010100", 
    24 => "10111101101011101111101111010101", 
    25 => "00111101000100000100100101110001", 
    26 to 29=> "00000000000000000000000000000000", 
    30 => "00111110011010111110100000101001", 
    31 => "00111111001101110000000000101111", 
    32 => "00111111001000011000000101100111", 
    33 => "10111100111001010011111000111000", 
    34 => "10111110001111111000011000001110", 
    35 => "00111100111111001010011100010000", 
    36 => "00111101000001101011000001010110", 
    37 => "10111100001011011010000010111001", 
    38 to 39=> "00000000000000000000000000000000", 
    40 => "00111110001000111111000111100010", 
    41 => "00111111000110101001010010001110", 
    42 => "00111111001110010110110001001000", 
    43 => "00111110000011011100000000011100", 
    44 => "10111110011110000001110000100111", 
    45 => "10111101000001000001001100110010", 
    46 => "00111101100111101101110111001110", 
    47 => "10111011110011001000010101101010", 
    48 => "10111100010011100001111101111111", 
    49 => "00111011010110101001110000101110" );


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

entity DWT_filter_h is
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

architecture arch of DWT_filter_h is
    component DWT_filter_h_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    DWT_filter_h_rom_U :  component DWT_filter_h_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


