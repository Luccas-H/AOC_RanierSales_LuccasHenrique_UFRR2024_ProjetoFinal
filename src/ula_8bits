library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ula_8bits is
    Port (
        A, B 				: in STD_LOGIC_VECTOR(7 downto 0);  	-- Operandos de 8 bits
        OpCode 			: in STD_LOGIC_VECTOR(3 downto 0); 		-- Código da operação (4 bits)
        Resultado 		: buffer STD_LOGIC_VECTOR(7 downto 0); 	-- Saída de 8 bits
        Zero 				: out STD_LOGIC 								-- Flag que indica se o resultado é zero
    );
end ula_8bits;


architecture main of ula_8bits is
begin
    -- Seleção da operação com base no OpCode
    Resultado <= A + B when OpCode = "0000" else  					-- Soma
                 A - B when OpCode = "0001" else  					-- Subtração
                 A and B when OpCode = "0010" else 				-- AND lógico
                 A or B when OpCode = "0011" else  				-- OR lógico
                 A xor B when OpCode = "0100" else 				-- XOR lógico
                 not A when OpCode = "0101" else  					-- NOT A
                 B(6 downto 0) & '0' when OpCode = "0110" else -- Shift Left
                 '0' & B(7 downto 1) when OpCode = "0111" else -- Shift Right
                 (others => '0'); 										-- Operação padrão (resultado nulo)

    -- Verifica se o resultado é zero
    Zero <= '1' when Resultado = "00000000" else '0';

end main;
