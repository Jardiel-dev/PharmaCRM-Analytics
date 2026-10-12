-- Criação das tabelas principais do PharmaCRM Analytics

-- 1. Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    data_nascimento DATE,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
    produto_id SERIAL PRIMARY KEY,
    nome_produto VARCHAR(150) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco NUMERIC(10, 2) NOT NULL
);

-- 3. Tabela de Vendas (Histórico de Compras)
CREATE TABLE IF NOT EXISTS vendas (
    venda_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    produto_id INT REFERENCES produtos(produto_id),
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantidade INT NOT NULL,
    valor_total NUMERIC(10, 2) NOT NULL
);