# Funções de Janela (Window Functions) no PostgreSQL

As funções de janela são um recurso avançado e extremamente útil em SQL, que permite executar cálculos sobre um conjunto de linhas relacionadas à linha corrente sem a necessidade de agregações que reduzem o número de registros. Essa abordagem possibilita análises sofisticadas e enriquecidas, mantendo o detalhamento dos dados originais.

---

## Por Que Utilizar Funções de Janela?

- **Cálculos Mais Flexíveis:**  
  Permitem executar somas acumuladas, cálculos de médias móveis, ranking, diferenças entre linhas sucessivas, entre outros, sem perder os detalhes de cada registro.

- **Manutenção da Granularidade:**  
  Ao contrário das funções de agregação tradicionais, que agrupam e condensam os resultados, as funções de janela geram valores calculados para cada linha individual, preservando a granularidade dos dados.

- **Análise Dinâmica dos Dados:**  
  Ao definir uma "janela" de dados (ou seja, um conjunto de linhas relacionadas conforme alguma partição ou ordenação), é possível realizar análises que consideram contextos específicos dos dados sem a necessidade de múltiplas consultas ou subconsultas.

---

## Principais Características

- **Análise sobre Partições:**  
  Você pode definir uma “janela” (window) que particiona os dados com base em uma ou mais colunas. Dessa forma, a função é aplicada a cada partição de dados separadamente.

- **Ordenação Interna:**  
  Dentro de cada partição, é possível especificar uma ordem. Essa ordenação é especialmente útil para funções que dependem da sequência, como `ROW_NUMBER()`, `RANK()`, `LEAD()` e `LAG()`.

- **Manutenção dos Dados Originais:**  
  Ao contrário de funções de agregação clássicas (como `SUM()`, `AVG()`, etc.), as funções de janela não reduzem o número de linhas retornadas. Em vez disso, elas acrescentam informações calculadas a cada linha.

---

## Sintaxe Básica

A estrutura geral de uma função de janela é:

```sql
função() OVER (
  [PARTITION BY coluna1, coluna2, ...]
  [ORDER BY coluna3, coluna4, ...]
  [outras opções de frame]
)