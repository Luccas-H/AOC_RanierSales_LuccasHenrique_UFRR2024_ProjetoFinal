# Relatório Técnico de Circuitos Digitais

## Componente: Memória ROM de 8 Bits

---

### 1. Descrição do Componente

- *Descrição Geral:* A memória ROM (Read-Only Memory) é um tipo de memória utilizada para armazenar dados  que não podem ser alterados, durante a operação, de modo permanente ou até semipermanente, ou seja, ela é usada para guardar dados que não serão alterados frequentemente. Nesta Simulação a seleção de palavras é realizada através de três inputs de 1 bit, e a saída contém os dados correspondentes ao endereço fornecido.

- *Pinos e Lógica do Componente:*  

  | Pino | Nome/Função           | Descrição                                                   |
  |------|-----------------------|-----------------------------------------------------------|
  | 1    | Endereço           | Barramento de endereço para selecionar a palavra armazenada. |
  | 2    | Saída              | Saída de 8 bits contendo a palavra correspondente ao endereço. |
  
  

- *Função Lógica:*  
  A ROM é organizada como uma tabela de endereços. Para cada valor do barramento de endereço, existe uma palavra correspondente na saída.

  | Endereço  | Dados  |
  |--------------|-----------|
  | 000     | 10101010  |
  | 001     | 01010101  |
  | 010     | 00000000  |
  | 011     | 01101100  |
  | 100     | 00110011  |
  | 101     | 00100101  |
  | 110     | 11010100  |
  | 111     | 00111111  |
  
---

### 2. Esquema do Circuito

- *Captura de Tela do Circuito em Logisim:*
  
  ![Esquema do Circuito](Imagens/ROM_circuito_completo.png)  
  Legenda: Este esquema mostra a ROM configurada com entradas para o endereço e uma saída.
  
- *Descrição do Esquema:*  
  O circuito foi desenvolvido a partir de portas lógicas AND, OR e NOT. Os endereços vão de 000-111 e cada um correspondem a um respectivo dado.

---

### 3. Testes Realizados

#### Configuração do Teste

- *Descrição do Teste:*  
  O objetivo dos testes foi validar o funcionamento correto da ROM, garantindo que para cada endereço de entrada, os dados armazenados são exibidos na saída.

- *Entradas, Conexões e Saídas Esperadas:*  
  
  | Endereço de Entrada | Dados Armazenados   | Dados na Saída  |
  |---------------------|---------------------|-----------------|
  | 000            | 10101010           | 10101010        |
  | 001            | 01010101           | 01010101        |
  | 010            | 00000000           | 00000000        |
  | 011            | 01101100           | 01101100        |
  | 100            | 00110011           | 00110011        |
  | 101            | 00100101           | 00100101        |
  | 110            | 11010100           | 11010100        |
  | 111            | 00111111           | 00111111        |
  

#### Configuração do Logisim

- *Configurações Utilizadas:*  
  - Endereço definido por 3 inputs de 1 bit.  
  - Saída de 8 bits ligada a um distriuidor.  
  - Configuração inicial da ROM feita manualmente através da tabela de dados acima.  

---

### 4. Resultados dos Testes

- *Resultados Obtidos no Logisim:*  

| Endereço de Entrada | Dados Armazenados   | Dados na Saída  |
  |---------------------|---------------------|-----------------|
  | 000            | 10101010           | 10101010        |
  | 001            | 01010101           | 01010101        |
  | 010            | 00000000           | 00000000        |
  | 011            | 01101100           | 01101100        |
  | 100            | 00110011           | 00110011        |
  | 101            | 00100101           | 00100101        |
  | 110            | 11010100           | 11010100        |
  | 111            | 00111111           | 00111111        |

- *Captura de Tela do Resultado:*

  - Teste 1:   
  
  ![Resultados do Teste](Imagens/ROM_teste1.png)  
  Legenda: Endereço: 100 | Saída: 00110011.
  
  - Teste 2:   
  
  ![Resultados do Teste](Imagens/ROM_teste2.png)  
  Legenda: Endereço: 101 | Saída: 00100101.
  
  - Teste 3:   
  
  ![Resultados do Teste](Imagens/ROM_teste3.png)  
  Legenda: Endereço: 110 | Saída: 11010100.

- *Análise dos Resultados:*  
  Os resultados obtidos coincidiram com os valores esperados para todos os endereços. Isso afirma que a memória ROM foi configurada e implementada corretamente.

---

Relatório elaborado por: **Ranier Sales e Luccas Henrique**  
Última atualização: **09/12/2024**
