-- Consulta 3: Identificação de clientes inativos (Análise de Recência para Churn)
-- Importância para CRM: Mapear a data da última compra de cada cliente para enviar e-mails de reativação ("Saudades de você!").

SELECT 
    c.cliente_id,
    c.nome AS nome_cliente,
    c.email,
    MAX(v.data_venda) AS data_ultima_compra,
    CURRENT_DATE - MAX(v.data_venda) AS dias_sem_comprar
FROM clientes c
LEFT JOIN vendas v ON c.cliente_id = v.cliente_id
GROUP BY c.cliente_id, c.nome, c.email
ORDER BY dias_sem_comprar DESC NULLS FIRST;