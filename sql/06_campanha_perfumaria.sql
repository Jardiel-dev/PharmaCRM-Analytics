-- Consulta 4: Audiência da Campanha de Black Friday (Categoria Perfumaria e Cosméticos)
-- Importância para CRM: Extrai a lista final de contatos (Target Audience) pronta para ser exportada/sincronizada com o SFMC.

SELECT DISTINCT
    c.cliente_id AS subscriber_key,
    c.nome,
    c.email,
    p.categoria AS categoria_preferida,
    MAX(v.data_venda) AS ultima_compra,
    COUNT(v.venda_id) AS total_compras_perfumaria
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id
WHERE p.categoria = 'Perfumaria e Cosméticos'
GROUP BY c.cliente_id, c.nome, c.email, p.categoria
ORDER BY ultima_compra DESC;