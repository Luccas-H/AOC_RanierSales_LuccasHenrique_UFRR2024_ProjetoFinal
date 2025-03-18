library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4x1 is
    Port (
        D0, D1, D2, D3 : in STD_LOGIC_VECTOR(1 downto 0); -- Entradas de 2 bits
        S             : in STD_LOGIC_VECTOR(1 downto 0); -- Seletor de 2 bits
        Y             : out STD_LOGIC_VECTOR(1 downto 0) -- Saída de 2 bits
    );
end mux_4x1;

architecture main of mux_4x1 is
begin
    Y <= D0 when S = "00" else
         D1 when S = "01" else
         D2 when S = "10" else
         D3; 
end main;