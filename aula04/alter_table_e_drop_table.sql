-- Criando a tabela "pessoas" no banco de dados

CREATE TABLE IF NOT EXISTS pessoas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,   -- SQLite: A chave primária é incrementada automaticamente
                                           -- MySQL: Usaria "id INT NOT NULL AUTO_INCREMENT PRIMARY KEY"
    nome VARCHAR(1) NOT NULL,
    nascimento DATE,
    sexo TEXT CHECK(sexo IN ('M', 'F')),
    peso DECIMAL(5,2),
    altura DECIMAL(5,2),
    nacionalidade VARCHAR(28) DEFAULT 'Brasil'
);

-- Alterando a tabela "pessoas" para adicionar uma nova coluna chamada "profissao"
-- No SQLite, como o SQLite não permite o uso de "AFTER", a coluna será adicionada no final da tabela.

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);  -- No SQLite, a coluna é adicionada ao final da tabela.

-- Comentário: No MySQL, você poderia adicionar uma coluna em uma posição específica usando a opção "AFTER". 
-- O comando seria: 
-- ALTER TABLE pessoas ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Modificando a coluna "profissao" para torná-la obrigatória (NOT NULL) e aumentar o tamanho da coluna
-- No SQLite, a modificação de coluna não é possível diretamente. É necessário recriar a tabela.

-- Comentário: No MySQL, a sintaxe para modificar uma coluna seria:
-- ALTER TABLE pessoas MODIFY COLUMN profissao VARCHAR(28) NOT NULL;

-- Apagar a coluna "profissao" (não suportado diretamente no SQLite)
-- Para remover uma coluna no SQLite, a única solução seria recriar a tabela.

-- Comentário: No MySQL, para remover uma coluna, você usaria o comando:
-- ALTER TABLE pessoas DROP COLUMN profissao;

-- Vamos verificar os dados da tabela "pessoas"
SELECT * FROM pessoas;

-- Criando a tabela "cursos", agora sem o "DEFAULT CHARSET"
-- No SQLite, o conjunto de caracteres já é UTF-8 por padrão, então não é necessário especificar isso.

CREATE TABLE IF NOT EXISTS cursos (
    nome VARCHAR(30) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totaulas INT UNSIGNED,
    ano YEAR DEFAULT 2016
);

-- Comentário: No MySQL, você poderia especificar o conjunto de caracteres como UTF-8 assim:
-- CREATE TABLE cursos (
-- nome VARCHAR(30) NOT NULL UNIQUE,
-- descricao TEXT,
-- carga INT UNSIGNED,
-- totaulas INT UNSIGNED,
-- ano YEAR DEFAULT 2016
-- ) DEFAULT CHARSET=utf8;

-- Inserindo dados na tabela "cursos"
INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
('Matemática', 'Curso de Matemática Básica', 60, 20, 2020),
('Física', 'Curso de Física Avançada', 80, 30, 2021),
('Química', 'Curso de Química Experimental', 50, 15, 2022);

-- Verificando os dados da tabela "cursos"
SELECT * FROM cursos;

-- Criando a tabela "teste"
CREATE TABLE IF NOT EXISTS teste (
    id INT,
    nome VARCHAR(10),
    idade INT
);

-- Inserindo dados na tabela "teste"
INSERT INTO teste (id, nome, idade) VALUES
(1, 'Pedro', 22),
(2, 'Maria', 12),
(3, 'Maricota', 77);

-- Verificando os dados da tabela "teste"
SELECT * FROM teste;

