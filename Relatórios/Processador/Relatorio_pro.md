# Relatório Técnico de Instruções do Processador

## Componente: Conjunto de Instruções

### 1. Descrição Geral

O conjunto de instruções do processador define as operações que podem ser realizadas e como os dados são manipulados dentro da CPU. As instruções são classificadas em três tipos principais: R, I e J, cada um com diferentes formatos e propósitos.

### 2. Tipos de Instruções

#### **Tipo R (Registro)**

As instruções do tipo R operam diretamente sobre registradores. Elas utilizam dois registradores fonte e executam operações aritméticas ou lógicas.

- **Formato:**
  | Campo           | Bits  | Descrição                                   |
  |---------------|------|---------------------------------|
  | OpCode       | 4    | Código da operação a ser realizada  |
  | Registrador fonte 1 | 2    | Primeiro registrador de entrada |
  | Registrador fonte 2 | 2    | Segundo registrador de entrada |

- **Exemplo de Instrução:**
  - Soma entre dois registradores:
    ```
    ADD R1, R2
    ```
  - Aqui, os valores contidos em `R1` e `R2` são somados, e o resultado é armazenado em `R1`.

#### **Tipo I (Imediato)**

As instruções do tipo I utilizam um valor imediato ou um endereço, além de um registrador fonte.

- **Formato:**
  | Campo           | Bits  | Descrição                                    |
  |---------------|------|----------------------------------|
  | OpCode       | 4    | Código da operação a ser realizada  |
  | Registrador fonte | 2    | Registrador de entrada |
  | Imediato/Endereço | 2    | Valor imediato ou endereço de memória |

- **Exemplo de Instrução:**
  - Carregar um valor imediato em um registrador:
    ```
    LOADI R1, 5
    ```
  - Aqui, o valor `5` é carregado diretamente no registrador `R1`.

#### **Tipo J (Jump - Desvio)**

As instruções do tipo J são utilizadas para alterar o fluxo de execução do programa, permitindo saltos para diferentes endereços.

- **Formato:**
  | Campo      | Bits  | Descrição                              |
  |-----------|------|------------------------------|
  | OpCode    | 4    | Código da operação de salto |
  | Endereço  | 4    | Endereço de destino do salto |

- **Exemplo de Instrução:**
  - Pular para o endereço `10`:
    ```
    JUMP 10
    ```
  - Aqui, a execução do programa continuará a partir do endereço `10` na memória.

### 3. Conclusão
O conjunto de instruções define a arquitetura do processador e permite que operações sejam realizadas com base na manipulação de registradores, valores imediatos e endereços.

---

