-- Consulta 2: Análise de preferência de categoria por cliente
-- Importância para CRM: Permite criar campanhas direcionadas baseadas no comportamento de compra (ex: saúde vs. beleza/perfumaria).

SELECT 
    c.cliente_id,
    c.nome AS nome_cliente,
    p.categoria,
    COUNT(v.venda_id) AS quantidade_itens_comprados,
    SUM(v.valor_total) AS total_gasto_categoria
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id
GROUP BY c.cliente_id, c.nome, p.categoria
ORDER BY c.cliente_id, total_gasto_categoria DESC;