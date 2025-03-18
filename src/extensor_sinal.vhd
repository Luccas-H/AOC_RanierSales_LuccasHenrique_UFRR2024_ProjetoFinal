library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity extensor_sinal is
    Port (
				input_sig	: in STD_LOGIC_VECTOR(3 downto 0); -- Entrada de 4 bits
				output_sig	: out STD_LOGIC_VECTOR(7 downto 0) -- Saída estendida para 8 bits
    );
end extensor_sinal;

architecture main of extensor_sinal is
begin

    output_sig(7 downto 4) <= (others => input_sig(3)); -- Extensão de sinal replicando o bit de sinal
    output_sig(3 downto 0) <= input_sig;
	 
end main;
