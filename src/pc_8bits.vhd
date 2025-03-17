library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity pc_8bits is
    Port (
        clk : in STD_LOGIC;									-- Entrada do clock, que sincroniza a atualização do PC
        reset : in STD_LOGIC;									-- Entrada de reset para reinicializar o PC
        pc_in : in STD_LOGIC_VECTOR (7 downto 0);		-- Entrada que define o próximo valor do PC
        pc_out : out STD_LOGIC_VECTOR (7 downto 0)		-- Saída que contém o valor atual do PC
    );
end pc_8bits;


architecture main of pc_8bits is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            pc_out <= (others	=> '0');	-- Reseta o PC para zero
        elsif rising_edge(clk) then
            pc_out <= pc_in;				-- Atualiza o PC com o valor de entrada
        end if;
    end process;
end main;
