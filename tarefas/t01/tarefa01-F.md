# Junções NATURAL JOIN e CROSS JOIN em SQL

Este documento explica dois tipos de junções disponíveis em SQL: o **NATURAL JOIN** e o **CROSS JOIN**. São abordadas as características, pontos importantes e exemplos práticos de cada uma.

---

## NATURAL JOIN

O **NATURAL JOIN** combina duas tabelas automaticamente com base em todas as colunas que possuem o mesmo nome e tipo de dado em ambas. Essa junção elimina a necessidade de especificar manualmente as colunas de junção, simplificando a query.

### Pontos Importantes

- **Junção Automática:**As colunas com nomes correspondentes nas tabelas são automaticamente usadas para combinar os registros.
- **Sem Repetição de Colunas:**As colunas que servem para a junção aparecem apenas uma vez no resultado final, evitando duplicações desnecessárias.
- **Cuidado com as Colunas Iguais:**Se as tabelas contiverem colunas com o mesmo nome que não devem ser comparadas, o uso do `NATURAL JOIN` pode produzir resultados inesperados.
- **Query Mais Concisa:**
  Em esquemas onde as chaves possuem nomes idênticos, o `NATURAL JOIN` torna a consulta mais limpa e legível.

### Exemplo de NATURAL JOIN

Suponha que existam duas tabelas:

- **funcionario**:

  - `codigo`
  - `nome`
  - `cod_depto`
- **departamento**:

  - `codigo`
  - `descricao`

Para combinar os registros com base na coluna `codigo` (presente em ambas as tabelas), a consulta seria:

```sql
SELECT *
FROM funcionario
NATURAL JOIN departamento;
```

---

# CROSS JOIN

O **CROSS JOIN** é uma operação em SQL que realiza o *produto cartesiano* entre duas tabelas. Isso significa que cada linha da primeira tabela é combinada com todas as linhas da segunda tabela, produzindo um conjunto de resultados cujo número total de registros é o produto do número de linhas de cada tabela.

---

## Pontos Importantes

- **Produto Cartesiano:**  
  Se a primeira tabela possui _m_ registros e a segunda possui _n_ registros, o resultado do `CROSS JOIN` terá _m × n_ registros.

- **Sem Condição de Junção:**  
  Ao contrário de outras junções (como `INNER JOIN` ou `LEFT JOIN`), o `CROSS JOIN` não utiliza nenhuma cláusula `ON` ou `USING` para combinar as linhas. Ele efetua a junção combinando todas as linhas das tabelas, sem restrição.

- **Cuidado com o Tamanho do Resultado:**  
  Em bases de dados grandes, o resultado de um `CROSS JOIN` pode ser muito volumoso, o que pode consumir muitos recursos e afetar o desempenho do sistema.

---

## Exemplo Prático

Considere as seguintes tabelas:

### Tabela **cores**

| cor      | hex     |
|----------|---------|
| Vermelho | #FF0000 |
| Verde    | #00FF00 |

### Tabela **tamanhos**

| tamanho | descricao |
|---------|-----------|
| Pequeno | P         |
| Grande  | G         |

Queremos combinar todas as cores com todos os tamanhos. Para isso, podemos usar o `CROSS JOIN` da seguinte forma:

```sql
SELECT cores.cor, tamanhos.tamanho
FROM cores
CROSS JOIN tamanhos;
