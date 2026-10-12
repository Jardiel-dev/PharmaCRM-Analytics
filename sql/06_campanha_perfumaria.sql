-- Consulta 4: Audiência da Campanha de Black Friday (Categoria Perfumaria)
-- Importância para CRM: Extrai a lista final de contatos (Target Audience) pronta para ser exportada/sincronizada com o SFMC.

SELECT DISTINCT
    c.cliente_id AS subscriber_key,
    c.nome,
    c.email,
    p.categoria AS categoria_preferida,
    MAX(v.data_venda) AS ultima_compra
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id
WHERE p.categoria = 'Perfumaria'
GROUP BY c.cliente_id, c.nome, c.email, p.categoria
HAVING MAX(v.data_venda) >= CURRENT_DATE - INTERVAL '365 days'
ORDER BY ultima_compra DESC;