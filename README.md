# 🚀 Processador RISC de 8 bits em VHDL

## 📌 Sobre o Projeto
Este repositório contém a implementação de um processador RISC de 8 bits utilizando a linguagem VHDL. O projeto faz parte de um trabalho acadêmico desenvolvido por **Ranier Sales** e **Luccas Henrique**.

## ⚙️ Funcionalidades
✅ Arquitetura baseada em 8 bits  
✅ Suporte a um conjunto básico de instruções  
✅ Simulação de um programa utilizando todas as instruções suportadas pelo processador
✅ Simulação utilizando ferramentas como Eda Playground e Intel Quartus Prime Lite  
✅ Apresentação das simulações utilizando waveforms  


## 🔧 Requisitos
Para rodar e simular o projeto, é necessário ter:
- [Intel Quartus Prime Lite](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html)
- [EDA Playground](https://www.edaplayground.com/) (Para testes online)

## ▶️ Como Executar

📢 Vale ressaltar que estamos utilizando **VHDL no Intel Quartus Prime Lite** na versão 18.0. Se você ainda não possui o software instalado, siga o link abaixo para download:  
[📹 Link da Instalação do Intel Quartus](https://www.intel.com.br/content/www/br/pt/software-kit/667193/intel-quartus-prime-lite-edition-design-software-version-18-0-for-windows.html) **

Agora, siga os passos abaixo para executar o projeto no **Intel Quartus Prime Lite**:

1. **Clone o repositório**:
    
    ```sh
    git clone https://github.com/RanierSales/AOC_RanierSales_LuccasHenrique_UFRR2024_ProjetoFinal.git
    ```
    
2. **Abra o Intel Quartus** e crie um novo projeto.
3. **Adicione os arquivos VHDL** localizados na pasta `src/` ao projeto.
4. **Configure a top-level entity** para o arquivo principal (`processador.vhd`).
5. **Compile o projeto** clicando em _Start Compilation_.
6. **Abra a ferramenta de simulação** (_Simulation -> Simulation Settings_).
7. **Configure o testbench**, selecionando o arquivo de teste na pasta `testbench/`.
8. **Execute a simulação** e visualize os sinais gerados.

## 📂 Estrutura do Repositório
```
/
├── src/                # Códigos VHDL
│   ├── processador.vhd
│   ├── controle.vhd
│   ├── alu.vhd
│   ├── registradores.vhd
│   ├── memoria.vhd
│   ├── unidade_de_controle.vhd
│   ├── banco_de_registradores.vhd
│   └── ...
├── testbench/          # Arquivos de teste (Testbenches)
├── docs/               # Documentação do projeto
├── README.md           # Este arquivo
└── LICENSE             # Licença do projeto
```

## 👨‍💻 Autores
- **Ranier Sales**  
- **Luccas Henrique**  
