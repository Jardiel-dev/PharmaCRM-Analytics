# Aplicação das Consultas SQL no Salesforce Marketing Cloud (SFMC)

Este documento descreve como as consultas desenvolvidas no PostgreSQL podem ser adaptadas para automações e segmentações no Salesforce Marketing Cloud.

---

## 1. Mapeamento de Conceitos

| Conceito Relacional (PostgreSQL) | Conceito SFMC | Função no CRM |
| :--- | :--- | :--- |
| Tabela de Clientes (`clientes`) | Profile Data Extension (Data Extension de Perfil) | Guarda os atributos do contato (SubscriberKey, E-mail, Nome). |
| Tabela de Vendas (`vendas`) | Transactional Data Extension | Guarda o histórico de transações sincronizado do CRM/PDV. |
| Resultado da Consulta (`SELECT`) | Target Data Extension | Tabela final que receberá o público segmentado. |
| Execução SQL (`Query Tool`) | SQL Query Activity (Automation Studio) | Script automatizado que roda periodicamente para atualizar o público. |

---

## 2. Adaptações de Sintaxe do SQL

O Salesforce Marketing Cloud utiliza **SQL Server (Transact-SQL / T-SQL)**. Algumas adaptações simples de funções em relação ao PostgreSQL:

* **Data Atual**:
  * *PostgreSQL*: `CURRENT_DATE`
  * *SFMC (T-SQL)*: `GETDATE()`
* **Diferença de Dias**:
  * *PostgreSQL*: `CURRENT_DATE - MAX(data_venda)`
  * *SFMC (T-SQL)*: `DATEDIFF(day, MAX(data_venda), GETDATE())`

---

## 3. Réguas de Comunicação Sugeridas

1. **Régua de Boas-Vindas (Onboarding)**:
   * **Critério**: Clientes onde `dias_sem_comprar` é `NULL`.
   * **Ação**: Disparo automático de e-mail com cupom de primeira compra.

2. **Régua de Reativação (Winback / Churn)**:
   * **Critério**: Clientes com `dias_sem_comprar > 90`.
   * **Ação**: Envio de ofertas personalizadas na categoria favorita do cliente.

3. **Programa de Fidelidade VIP**:
   * **Critério**: Top 10% de clientes em `valor_total_gasto`.
   * **Ação**: Convite para clube de benefícios exclusivo.