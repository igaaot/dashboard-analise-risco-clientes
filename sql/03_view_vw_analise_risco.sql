CREATE OR REPLACE VIEW vw_analise_risco AS
SELECT
    c.id,
    c.nome,
    c.idade,
    c.cidade,
    c.renda_mensal,
    c.score_credito,
    SUM(t.valor) AS total_gasto,
    ROUND((SUM(t.valor) / c.renda_mensal) * 100, 2) AS percentual_comprometido,
    CASE
        WHEN (SUM(t.valor) / c.renda_mensal) * 100 <= 30 THEN 'Baixo Risco'
        WHEN (SUM(t.valor) / c.renda_mensal) * 100 <= 60 THEN 'Medio Risco'
        ELSE 'Alto Risco'
    END AS classificacao_risco
FROM clientes c
JOIN transacoes t ON t.cliente_id = c.id
GROUP BY
    c.id,
    c.nome,
    c.idade,
    c.cidade,
    c.renda_mensal,
    c.score_credito;
