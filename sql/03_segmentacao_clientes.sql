-- Consulta 1: Listar o ranking de clientes que mais gastaram na rede de farmácias
-- Importância para CRM: Identificar os clientes VIP/mais valiosos para campanhas de fidelização.

SELECT 
    c.cliente_id,
    c.nome AS nome_cliente,
    c.email,
    COUNT(v.venda_id) AS total_compras,
    SUM(v.valor_total) AS valor_total_gasto
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
GROUP BY c.cliente_id, c.nome, c.email
ORDER BY valor_total_gasto DESC;