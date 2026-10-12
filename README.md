# PharmaCRM Analytics

Projeto de portfólio avançado unindo SQL técnico, modelagem de dados e estratégia de CRM, simulando uma rede de farmácias fictícia.

---

## 🎯 Objetivo
Construir uma solução demonstrativa utilizando dados sintéticos de alta escala, aplicando conceitos de banco de dados relacionais e SQL avançado para apoiar a criação de públicos-alvo para campanhas de marketing multicanal e estratégias avançadas de CRM.

---

## 🛠️ Tecnologias Utilizadas
- **PostgreSQL** (Banco de dados relacional local / pgAdmin)
- **SQL** (Linguagem de consulta, agregações, funções de janela/NTILE e análises estatísticas)
- **Git e GitHub** (Controle de versão e portfólio)
- **Salesforce Marketing Cloud Engagement** (Estudo conceitual de automações, automations e adaptação de consultas SQL / Target Audience)

---

## 📂 Estrutura do Projeto
- `sql/` — Contém os scripts DDL de criação de tabelas, cargas de massa de dados (*seeds* de 100 e 500 clientes) e consultas analíticas de segmentação.
- `docs/` — Documentação do modelo de dados, guias de integração com o SFMC e briefings estratégicos de campanhas (`docs/campaigns/`).
- `data/` — Dados sintéticos e arquivos auxiliares.

---

## 🚀 Progresso Atual e Funcionalidades Desenvolvidas
- [x] Configuração inicial do ambiente local e repositório no GitHub.
- [x] Modelagem de dados relacional robusta (`clientes`, `produtos` e `vendas`).
- [x] Expansão da base para **600 clientes** e mais de **1.000 transações** de vendas realísticas.
- [x] **Consulta 1**: Ranking de clientes por valor total gasto / LTV básico (`sql/03_segmentacao_clientes.sql`).
- [x] **Consulta 2**: Análise de preferência de consumo por categoria de produtos (`sql/04_segmentacao_categorias.sql`).
- [x] **Consulta 3**: Análise de recência e identificação de clientes inativos / Churn (`sql/05_clientes_inativos.sql`).
- [x] **Consulta 4**: Audiência direcionada para campanhas sazonais como Black Friday (`sql/06_campanha_perfumaria.sql`).
- [x] **Consulta 5**: Matriz de Segmentação RFM Completa (Recência, Frequência e Valor Monetário com classificação por quartis/NTILE) (`sql/08_segmentacao_rfm.sql`).
- [x] **Documentação Estratégica**: Briefing de campanhas comerciais e guia de aplicação de SQL em ecossistemas de mercado como o Salesforce Marketing Cloud (`docs/`).

---

## 🔒 Aviso sobre os Dados
Este projeto é independente e utiliza exclusivamente **dados fictícios**. Não possui qualquer vínculo ou acesso aos sistemas internos de empresas reais.