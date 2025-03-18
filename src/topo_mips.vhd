library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity topo_mips is
    Port (
        clk, reset : in STD_LOGIC
    );
end topo_mips;

architecture main of topo_mips is
    -- Sinais internos
    signal pc_in, pc_out                                                                 : STD_LOGIC_VECTOR(7 downto 0);
    signal instr                                                                         : STD_LOGIC_VECTOR(7 downto 0);
    signal opcode                                                                        : STD_LOGIC_VECTOR(3 downto 0);
    signal reg_dst                                                                       : STD_LOGIC_VECTOR(1 downto 0);
    signal alu_src                                                                       : STD_LOGIC_VECTOR(0 downto 0);  
    signal mem_to_reg, reg_write, mem_read, mem_write, branch, jump                      : STD_LOGIC;  
    signal alu_op : STD_LOGIC_VECTOR(1 downto 0);
    signal read_data1, read_data2, alu_result, mem_data_internal, write_data             : STD_LOGIC_VECTOR(7 downto 0);
    signal zero                                                                          : STD_LOGIC;
    signal imm_ext : STD_LOGIC_VECTOR(7 downto 0);
    signal mux_alu_src_out, mux_mem_to_reg_out                                           : STD_LOGIC_VECTOR(7 downto 0);
    signal mux_reg_dst_out                                                               : STD_LOGIC_VECTOR(1 downto 0);

begin
    -- Unidade de Controle
    U_CTRL: entity work.unidade_controle
        port map (
            opcode     => instr(7 downto 4),
            reg_dst    => reg_dst,
            alu_src    => alu_src,
            mem_to_reg => mem_to_reg,
            reg_write  => reg_write,
            mem_read   => mem_read,
            mem_write  => mem_write,
            branch     => branch,
            jump       => jump,
            alu_op     => alu_op
        );

    -- PC
    PC_UNIT: entity work.pc_8bits
        port map (
            clk    => clk,
            reset  => reset,
            pc_in  => pc_in,
            pc_out => pc_out
        );

    -- Memória de Instruções
    MEM_INST: entity work.memoria_instruction
        port map (
            address => pc_out,
            instr   => instr
        );
    
    -- Banco de Registradores
    REG_FILE: entity work.bancoregis_8bits
        port map (
            clk       => clk,
            RegWrite  => reg_write,
            Rs        => instr(3 downto 2),
            Rt        => instr(1 downto 0),
            Rd        => mux_reg_dst_out, 
            WriteData => write_data,
            ReadData1 => read_data1,
            ReadData2 => read_data2
        );
    
    -- ALU
    ALU_UNIT: entity work.ula_8bits
        port map (
            A        => read_data1,
            B        => mux_alu_src_out, -- Mux seleciona entre read_data2 ou immediate extendido
            OpCode   => instr(7 downto 4),
            Resultado => alu_result,
            Zero     => zero
        );
    
    -- Memória de Dados
    MEM_DATA: entity work.memoria_dados
        port map (
            clk      => clk,
            we       => mem_write,
            address  => alu_result,
            data_in  => read_data2,
            data_out => mem_data_internal
        );
    
    -- Extensor de Sinal
    SIGN_EXT: entity work.extensor_sinal
        port map (
            input_sig  => instr(3 downto 0), -- Entrada de 4 bits
            output_sig => imm_ext             -- Saída estendida para 8 bits
        );

    -- MUX para selecionar registrador destino
    MUX_REG_DST: entity work.mux_4x1
        port map (
            D0 => instr(1 downto 0), -- Rt
            D1 => instr(3 downto 2), -- Rd
            D2 => (others => '0'),   
            D3 => (others => '0'),   
            S  => reg_dst,           -- Seletor de 2 bits
            Y  => mux_reg_dst_out    -- Saída de 2 bits
        );
    
    -- MUX para selecionar operando B da ALU
    MUX_ALU_SRC: entity work.mux_4x1
        port map (
            D0 => read_data2,
            D1 => imm_ext,
            D2 => (others => '0'),  
            D3 => (others => '0'),   
            S  => alu_src,           
            Y  => mux_alu_src_out
        );
    
    -- MUX para selecionar o dado a ser escrito no banco de registradores
    MUX_MEM_TO_REG: entity work.mux_4x1
        port map (
            D0 => alu_result,
            D1 => mem_data_internal,
            D2 => (others => '0'),   
            D3 => (others => '0'),   
            S  => mem_to_reg,        
            Y  => write_data
        );
    
    -- Lógica de atualização do PC
    pc_in <= pc_out + 1 when jump = '0' else
             imm_ext(7 downto 0);  

end main;
