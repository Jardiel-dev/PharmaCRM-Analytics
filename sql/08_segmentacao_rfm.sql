-- Consulta 5: Matriz de Segmentação RFM (Recência, Frequência e Monetário)
-- Importância para CRM: Agrupa clientes por comportamento de compra para direcionar mensagens de Marketing personalizadas.

WITH metricas_rfm AS (
    SELECT 
        c.cliente_id,
        c.nome,
        c.email,
        -- Recência: Dias desde a última compra
        CURRENT_DATE - MAX(v.data_venda)::DATE AS recencia_dias,
        -- Frequência: Total de compras efetuadas
        COUNT(v.venda_id) AS frequencia_compras,
        -- Valor Monetário: Total gasto acumulado (LTV)
        SUM(v.valor_total) AS valor_monetario
    FROM clientes c
    INNER JOIN vendas v ON c.cliente_id = v.cliente_id
    GROUP BY c.cliente_id, c.nome, c.email
),
quartis_rfm AS (
    SELECT 
        cliente_id,
        nome,
        email,
        recencia_dias,
        frequencia_compras,
        valor_monetario,
        -- Pontuação de 1 a 4 para cada pilar (NTILE)
        NTILE(4) OVER (ORDER BY recencia_dias DESC) AS R,
        NTILE(4) OVER (ORDER BY frequencia_compras ASC) AS F,
        NTILE(4) OVER (ORDER BY valor_monetario ASC) AS M
    FROM metricas_rfm
)
SELECT 
    cliente_id,
    nome,
    email,
    recencia_dias,
    frequencia_compras,
    ROUND(valor_monetario, 2) AS valor_total_gasto,
    R, F, M,
    -- Classificação Estratégica baseada nas notas de RFM
    CASE 
        WHEN R >= 3 AND F >= 3 AND M >= 3 THEN 'VIP / Campeões'
        WHEN R >= 3 AND F >= 2 THEN 'Clientes Leais'
        WHEN R >= 3 AND F = 1 THEN 'Promissores / Novos'
        WHEN R <= 2 AND (F >= 2 OR M >= 2) THEN 'Em Risco'
        ELSE 'Inativos / Churn'
    END AS segmento_crm
FROM quartis_rfm
ORDER BY valor_monetario DESC;