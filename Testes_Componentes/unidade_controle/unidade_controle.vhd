library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Unidade de Controle
entity unidade_controle is
    Port (
        opcode : in STD_LOGIC_VECTOR(3 downto 0); -- OpCode de 4 bits
        reg_dst : out STD_LOGIC;
        alu_src : out STD_LOGIC;
        mem_to_reg : out STD_LOGIC;
        reg_write : out STD_LOGIC;
        mem_read : out STD_LOGIC;
        mem_write : out STD_LOGIC;
        branch : out STD_LOGIC;
        jump : out STD_LOGIC;
        alu_op : out STD_LOGIC_VECTOR(1 downto 0) -- Código da operação ALU
    );
end unidade_controle;

architecture main of unidade_controle is
begin
    process(opcode)
    begin
        case opcode is
            when "0000" =>  -- ADD (Tipo R)
                reg_dst   <= '1';
                alu_src   <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read  <= '0';
                mem_write <= '0';
                branch    <= '0';
                jump      <= '0';
                alu_op    <= "00";
            
            when "0001" =>  -- SUB (Tipo R)
                reg_dst   <= '1';
                alu_src   <= '0';
                mem_to_reg <= '0';
                reg_write <= '1';
                mem_read  <= '0';
                mem_write <= '0';
                branch    <= '0';
                jump      <= '0';
                alu_op    <= "01";
            
            when "0010" =>  -- LOAD (Tipo I)
                reg_dst   <= '0';
                alu_src   <= '1';
                mem_to_reg <= '1';
                reg_write <= '1';
                mem_read  <= '1';
                mem_write <= '0';
                branch    <= '0';
                jump      <= '0';
                alu_op    <= "00";
            
            when "0011" =>  -- STORE (Tipo I)
                reg_dst   <= '0';
                alu_src   <= '1';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read  <= '0';
                mem_write <= '1';
                branch    <= '0';
                jump      <= '0';
                alu_op    <= "00";
            
            when "0100" =>  -- BEQ (Tipo I)
                reg_dst   <= '0';
                alu_src   <= '0';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read  <= '0';
                mem_write <= '0';
                branch    <= '1';
                jump      <= '0';
                alu_op    <= "01";
            
            when "0101" =>  -- JMP (Tipo J)
                reg_dst   <= '0';
                alu_src   <= '0';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read  <= '0';
                mem_write <= '0';
                branch    <= '0';
                jump      <= '1';
                alu_op    <= "00";
            
            when others =>  -- Instrução inválida
                reg_dst   <= '0';
                alu_src   <= '0';
                mem_to_reg <= '0';
                reg_write <= '0';
                mem_read  <= '0';
                mem_write <= '0';
                branch    <= '0';
                jump      <= '0';
                alu_op    <= "00";
        end case;
    end process;
end main;