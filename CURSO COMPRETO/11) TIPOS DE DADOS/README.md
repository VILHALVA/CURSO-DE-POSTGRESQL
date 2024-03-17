# TIPOS DE DADOS
## EM CONCEITOS:
Os tipos de dados em um sistema de gerenciamento de banco de dados, como o PostgreSQL, são usados para definir o tipo de valor que uma coluna em uma tabela pode conter. Eles garantem a integridade dos dados e ajudam a realizar operações e cálculos específicos. Abaixo, vou explicar os tipos de dados mais comuns no PostgreSQL:

1. **Tipos de Dados Numéricos:**
   - **integer (inteiro):** Armazena números inteiros.
   - **numeric(precision, scale):** Armazena números decimais com precisão e escala definidas.
   - **real:** Armazena números de ponto flutuante de precisão simples.
   - **double precision:** Armazena números de ponto flutuante de precisão dupla.

2. **Tipos de Dados de Texto e Busca de Texto:**
   - **character varying(n):** Armazena strings de caracteres com comprimento variável.
   - **character(n):** Armazena strings de caracteres com comprimento fixo.
   - **text:** Armazena strings de caracteres de comprimento variável (sem limite de tamanho).
   - **tsvector e tsquery:** Usados para pesquisa de texto em texto completo.

3. **Data, Hora, Fuso Horário e Timestamp:**
   - **date:** Armazena datas no formato "AAAA-MM-DD".
   - **time:** Armazena horários no formato "HH:MI:SS".
   - **timestamp:** Armazena datas e horários no formato "AAAA-MM-DD HH:MI:SS".
   - **timestamptz:** Armazena datas e horários com informações de fuso horário.
   - **interval:** Armazena intervalos de tempo.
   - **time with time zone:** Armazena horários com informações de fuso horário.
   - **date with time zone:** Armazena datas com informações de fuso horário.

4. **Tipos de Dados Especiais:**
   - **geométricos:** Usados para armazenar dados geométricos, como pontos, linhas e polígonos.
   - **cidr e inet:** Usados para armazenar endereços IP e faixas de endereços IP.
   - **bit e bit varying(n):** Armazena dados binários.
   - **uuid:** Armazena identificadores únicos universais (UUIDs).
   - **enum:** Armazena um conjunto de valores constantes.

5. **Tipos Definidos pelo Usuário:**
   - Os tipos definidos pelo usuário permitem que os desenvolvedores criem tipos personalizados. Isso pode ser útil para representar conceitos de domínio específicos em um aplicativo.

Esses são alguns dos tipos de dados mais comuns no PostgreSQL. Cada tipo de dado é escolhido com base na natureza dos dados que você deseja armazenar e na capacidade de realizar operações específicas com esses dados. O PostgreSQL oferece flexibilidade e riqueza de tipos de dados para atender a diversas necessidades de modelagem de dados.

## EM TABELAS:

**Tipos de Dados Numéricos:**

| Tipo de Dado              | Descrição                                            |
|---------------------------|------------------------------------------------------|
| integer                   | Armazena números inteiros.                           |
| numeric(precision, scale) | Armazena números decimais com precisão e escala.    |
| real                      | Armazena números de ponto flutuante de precisão simples. |
| double precision          | Armazena números de ponto flutuante de precisão dupla. |

**Tipos de Dados de Texto e Busca de Texto:**

| Tipo de Dado          | Descrição                                           |
|-----------------------|-----------------------------------------------------|
| character varying(n)  | Armazena strings de caracteres com comprimento variável. |
| character(n)          | Armazena strings de caracteres com comprimento fixo. |
| text                  | Armazena strings de caracteres de comprimento variável (sem limite de tamanho). |
| tsvector e tsquery    | Usados para pesquisa de texto em texto completo. |

**Data, Hora, Fuso Horário e Timestamp:**

| Tipo de Dado              | Descrição                                           |
|---------------------------|-----------------------------------------------------|
| date                      | Armazena datas no formato "AAAA-MM-DD".           |
| time                      | Armazena horários no formato "HH:MI:SS".          |
| timestamp                 | Armazena datas e horários no formato "AAAA-MM-DD HH:MI:SS". |
| timestamptz               | Armazena datas e horários com informações de fuso horário. |
| interval                  | Armazena intervalos de tempo.                      |
| time with time zone       | Armazena horários com informações de fuso horário. |
| date with time zone       | Armazena datas com informações de fuso horário.   |

**Tipos de Dados Especiais:**

| Tipo de Dado              | Descrição                                           |
|---------------------------|-----------------------------------------------------|
| geométricos               | Usados para armazenar dados geométricos, como pontos, linhas e polígonos. |
| cidr e inet               | Usados para armazenar endereços IP e faixas de endereços IP. |
| bit e bit varying(n)      | Armazena dados binários.                          |
| uuid                      | Armazena identificadores únicos universais (UUIDs). |
| enum                      | Armazena um conjunto de valores constantes.       |

