# 📢 Briefing de Campanha: Black Friday - Especial Perfumaria

---

## 🎯 1. Objetivo da Campanha
Reengajar clientes com histórico de interesse na categoria **Perfumaria** e converter novos clientes elegíveis através de ofertas exclusivas de antecipação da Black Friday.

---

## 👥 2. Audiência-Alvo (Target Audience)
- **Perfil Primário**: Clientes que já realizaram compras na categoria **Perfumaria**.
- **Perfil Secundário**: Clientes ativos que possuem alto valor acumulado (LTV) e ainda não compraram na categoria.
- **Exclusões**: Clientes inativos há mais de 365 dias (fora da régua de reativação primária) ou descadastrados (*Opt-out*).

---

## 📩 3. Canais & Mensageria
- **Canal Principal**: E-mail Marketing (via Salesforce Marketing Cloud).
- **Canal Secundário**: Push Notification / SMS para clientes engajados.
- **Oferta**: Cupom de 25% OFF em itens selecionados de perfumaria fina + Frete Grátis.

---

## 📊 4. Critérios de Sucesso (KPIs)
- **Taxa de Abertura (Open Rate)**: $\ge 22\%$
- **Taxa de Clique (CTR)**: $\ge 3.5\%$
- **Conversão de Vendas**: $\ge 1.8\%$
- **Receita Gerada**: Acompanhada via Tagging/UTM de campanha.

---

## 🛠️ 5. Regra de Seleção SQL
A audiência será extraída da base PostgreSQL através do script `sql/06_campanha_perfumaria.sql` e importada como uma **Target Data Extension** no SFMC.