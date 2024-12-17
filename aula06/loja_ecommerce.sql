-- Criação da tabela "clientes"
-- A tabela "clientes" armazenará informações sobre os clientes da loja.
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária com incremento automático
    nome VARCHAR(100) NOT NULL,                    -- Nome do cliente, não pode ser nulo
    email VARCHAR(100) NOT NULL UNIQUE,             -- Email do cliente, único, não pode ser nulo
    telefone VARCHAR(15),                           -- Telefone do cliente
    endereco VARCHAR(255),                          -- Endereço do cliente
    data_cadastro DATE DEFAULT CURRENT_DATE        -- Data de cadastro (data atual por padrão)
);

-- Inserir dados na tabela "clientes"
INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@exemplo.com', '987654321', 'Rua A, 123'),
('Maria Souza', 'maria@exemplo.com', '912345678', 'Rua B, 456'),
('Carlos Oliveira', 'carlos@exemplo.com', '923456789', 'Rua C, 789');

-- Criação da tabela "produtos"
-- A tabela "produtos" armazenará os produtos disponíveis para venda.
CREATE TABLE IF NOT EXISTS produtos (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária com incremento automático
    nome_produto VARCHAR(100) NOT NULL,            -- Nome do produto, não pode ser nulo
    preco DECIMAL(10,2) NOT NULL,                  -- Preço do produto, não pode ser nulo
    estoque INTEGER NOT NULL                       -- Quantidade disponível no estoque, não pode ser nulo
);

-- Inserir dados na tabela "produtos"
INSERT INTO produtos (nome_produto, preco, estoque) VALUES
('Camiseta', 39.90, 100),
('Calça Jeans', 79.90, 50),
('Tênis Esportivo', 129.90, 30);

-- Exemplo de UPDATE: Atualizando o preço de um produto
-- Atualizar o preço da "Camiseta" para 45.00
UPDATE produtos SET preco = 45.00 WHERE nome_produto = 'Camiseta';

-- Exemplo de DELETE: Remover um cliente da tabela
-- Remover o cliente "João Silva"
DELETE FROM clientes WHERE nome = 'João Silva';

-- Exemplo de TRUNCATE: Apagar todos os registros da tabela "produtos"
-- TRUNCATE não é suportado diretamente pelo SQLite, mas podemos usar o DELETE para limpar a tabela
DELETE FROM produtos;

-- Seleção de todos os dados das tabelas
-- Mostrar todos os clientes
SELECT * FROM clientes;

-- Mostrar todos os produtos
SELECT * FROM produtos;

