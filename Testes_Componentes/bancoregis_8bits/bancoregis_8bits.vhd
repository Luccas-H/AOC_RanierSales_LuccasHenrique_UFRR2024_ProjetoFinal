library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity bancoregis_8bits is
    Port (
        clk         : in STD_LOGIC; 							-- Clock
        RegWrite    : in STD_LOGIC; 							-- Sinal de controle para escrita
        Rs, Rt, Rd  : in STD_LOGIC_VECTOR(1 downto 0); 	-- Registradores de entrada
        WriteData   : in STD_LOGIC_VECTOR(7 downto 0); 	-- Dados para escrita
        ReadData1   : out STD_LOGIC_VECTOR(7 downto 0); 	-- Saída Rs
        ReadData2   : out STD_LOGIC_VECTOR(7 downto 0)  	-- Saída Rt
    );
end bancoregis_8bits;

architecture main of bancoregis_8bits is

    type RegFile is array (0 to 3) of STD_LOGIC_VECTOR(7 downto 0); 
    signal reg : RegFile := (others => (others => '0')); -- Inicializa com 0

begin
    -- Leitura assíncrona
    ReadData1 <= reg(conv_integer(Rs));
    ReadData2 <= reg(conv_integer(Rt));

    -- Escrita síncrona
    process(clk)
    begin
        if rising_edge(clk) then
            if RegWrite = '1' then
                reg(conv_integer(Rd)) <= WriteData;
            end if;
        end if;
    end process;

end main;