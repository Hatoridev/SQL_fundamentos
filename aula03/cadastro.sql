-- Criando a tabela "pessoas" no banco de dados

CREATE TABLE pessoas (
    
    -- Chave primária com incremento automático
    -- O comando "id INTEGER PRIMARY KEY AUTOINCREMENT" cria uma coluna "id" que será a chave primária da tabela.
    -- Ela será única para cada registro e incrementada automaticamente.
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    -- Nome da pessoa
    -- A coluna "nome" é definida como um campo de texto com comprimento máximo de 1 caractere.
    -- Essa coluna não pode ser nula (NOT NULL), ou seja, deve ser preenchida para cada registro.
    nome VARCHAR(1) NOT NULL,

    -- Data de nascimento da pessoa
    -- A coluna "nascimento" armazena a data de nascimento da pessoa.
    -- O tipo "DATE" é usado para armazenar datas (ano, mês e dia).
    nascimento DATE,

    -- Sexo da pessoa
    -- A coluna "sexo" usa o tipo ENUM (em MySQL) ou CHECK (em SQLite) para restringir os valores possíveis para 'M' ou 'F'.
    -- Isso garante que apenas esses valores sejam aceitos na tabela, evitando entradas inválidas.
    sexo TEXT CHECK(sexo IN ('M', 'F')),

    -- Peso da pessoa
    -- A coluna "peso" é do tipo DECIMAL, que é usado para números com casas decimais.
    -- A precisão é de 5 dígitos no total, com 2 casas após a vírgula.
    peso DECIMAL(5,2),

    -- Altura da pessoa
    -- Similar ao "peso", a coluna "altura" armazena valores decimais com 5 dígitos no total e 2 casas decimais.
    altura DECIMAL(5,2),

    -- Nacionalidade da pessoa
    -- A coluna "nacionalidade" armazena o país de origem da pessoa.
    -- O valor padrão é 'Brasil', ou seja, caso não seja informado outro valor, será considerado "Brasil".
    nacionalidade VARCHAR(28) DEFAULT 'Brasil'
);

-- Agora vamos explicar como inserir dados diretamente pelo terminal.

-- Para inserir dados diretamente no terminal, siga estas etapas:

-- 1. Abra o banco de dados usando o SQLite.
-- No terminal, digite o comando para entrar no SQLite com o banco de dados desejado:
-- sqlite3 pessoas.db

-- 2. Use o comando INSERT INTO para adicionar um registro.
-- No terminal, você pode inserir dados com o comando INSERT INTO da seguinte forma:

-- Exemplo de inserção de um registro:
-- INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
-- VALUES ('Godofredo', '1984-01-02', 'M', 78.5, 1.83, 'Brasil');

-- 3. Após inserir, você pode verificar os dados com o comando SELECT:
-- SELECT * FROM pessoas;

-- 4. Para sair do prompt do SQLite, use o comando:
-- .quit

