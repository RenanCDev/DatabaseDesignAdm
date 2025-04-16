CREATE OR REPLACE VIEW vw_act_por_func AS
SELECT 
    f.codigo AS cod_funcionario,
    f.nome AS nome_funcionario,
    COUNT(a.codigo) AS qtd_atividades
FROM funcionario f
LEFT JOIN atividade a ON f.codigo = a.cod_responsavel
GROUP BY f.codigo, f.nome;

SELECT * FROM vw_act_por_func;