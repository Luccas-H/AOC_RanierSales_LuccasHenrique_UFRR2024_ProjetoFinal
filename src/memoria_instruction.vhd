library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity memoria_instruction is
    Port (
        address     : in STD_LOGIC_VECTOR (7 downto 0);
        instr       : out STD_LOGIC_VECTOR (7 downto 0)
    );
end memoria_instruction;

architecture main of memoria_instruction is

    type mem_array is array (0 to 255) of STD_LOGIC_VECTOR(7 downto 0);
    signal memory : mem_array := (others => (others => '0'));

begin
    instr <= memory(to_integer(unsigned(address)));
end main;
