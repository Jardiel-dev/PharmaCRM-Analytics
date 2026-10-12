# PharmaCRM Analytics

Projeto de portfólio para aprender SQL e desenvolver segmentações de clientes aplicadas a CRM, simulando uma rede de farmácias fictícia.

---

## 🎯 Objetivo
Construir uma solução demonstrativa utilizando dados sintéticos de clientes, compras e produtos, aplicando conceitos de banco de dados relacionais e SQL para apoiar a criação de públicos para campanhas de marketing e estratégias de CRM.

---

## 🛠️ Tecnologias Utilizadas
- **PostgreSQL** (Banco de dados relacional local / pgAdmin)
- **SQL** (Linguagem de consulta, agregações e análises)
- **Git e GitHub** (Controle de versão e portfólio)
- **Salesforce Marketing Cloud Engagement** (Estudo conceitual de automações e adaptação de consultas)

---

## 📂 Estrutura do Projeto
- `sql/` — Contém os scripts DDL de criação de tabelas, carga de dados (*seed*) e consultas analíticas de segmentação.
- `docs/` — Documentação do modelo de dados, critérios de negócio e guia de integração com o SFMC.
- `data/` — Dados sintéticos e arquivos auxiliares.

---

## 🚀 Progresso Atual e Funcionalidades Desenvolvidas
- [x] Configuração inicial do ambiente local e repositório no GitHub.
- [x] Modelagem de dados relacional (`clientes`, `produtos` e `vendas`).
- [x] Carga de massa de dados sintética com 100 clientes e transações simuladas.
- [x] **Consulta 1**: Ranking de clientes por valor total gasto / LTV básico (`sql/03_segmentacao_clientes.sql`).
- [x] **Consulta 2**: Análise de preferência de consumo por categoria de produtos (`sql/04_segmentacao_categorias.sql`).
- [x] **Consulta 3**: Análise de recência e identificação de clientes inativos / Churn (`sql/05_clientes_inativos.sql`).
- [x] **Documentação Estratégica**: Guia de aplicação das consultas SQL em ecossistemas de mercado como o Salesforce Marketing Cloud (`docs/SFMC_INTEGRATION.md`).

---

## 🔒 Aviso sobre os Dados
Este projeto é independente e utiliza exclusivamente **dados fictícios**. Não possui qualquer vínculo ou acesso aos sistemas internos de empresas reais.