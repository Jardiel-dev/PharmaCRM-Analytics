-- Carga Adicional: 500 novos clientes e historico diversificado de vendas
-- Objetivo: Expandir o banco para analises estatisticas de grande volume em CRM.

-- 1. Inserção automatizada de 500 clientes (IDs 101 a 600)
INSERT INTO clientes (nome, email, data_nascimento, data_cadastro)
SELECT 
    'Cliente ' || i AS nome,
    'cliente' || i || '@emailficticio.com' AS email,
    CURRENT_DATE - (INTERVAL '18 years' + (RANDOM() * 18250 * INTERVAL '1 day')) AS data_nascimento,
    CURRENT_DATE - (RANDOM() * 730 * INTERVAL '1 day') AS data_cadastro
FROM generate_series(101, 600) AS i;

-- 2. Inserção automatizada de vendas aleatórias para esses novos clientes
INSERT INTO vendas (cliente_id, produto_id, data_venda, quantidade, valor_total)
SELECT 
    c.cliente_id,
    p.produto_id,
    c.data_cadastro + (RANDOM() * GREATEST(DATE_PART('day', CURRENT_DATE - c.data_cadastro), 1) * INTERVAL '1 day') AS data_venda,
    TRUNC(RANDOM() * 5 + 1)::INT AS quantidade,
    (TRUNC(RANDOM() * 5 + 1)::INT * p.preco) AS valor_total
FROM clientes c
CROSS JOIN LATERAL (
    SELECT produto_id, preco 
    FROM produtos 
    ORDER BY RANDOM() 
    LIMIT TRUNC(RANDOM() * 3 + 1)::INT -- De 1 a 3 compras por cliente
) p
WHERE c.cliente_id >= 101;