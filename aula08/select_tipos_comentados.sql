-- Criando a tabela cursos
-- O comando CREATE TABLE cria uma nova tabela no banco de dados.
-- Em SQLite, a sintaxe é a mesma do MySQL.
CREATE TABLE IF NOT EXISTS cursos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- A coluna "id" será a chave primária com incremento automático.
    nome VARCHAR(100) NOT NULL,  -- Nome do curso, obrigatório.
    descricao TEXT,  -- Descrição do curso, tipo texto.
    carga INTEGER,  -- Carga horária do curso (em horas).
    totaulas INTEGER,  -- Total de aulas do curso.
    ano INTEGER  -- Ano de lançamento do curso.
);  
-- No MySQL, seria: CREATE TABLE IF NOT EXISTS cursos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     descricao TEXT,
--     carga INT,
--     totaulas INT,
--     ano INT
-- );

-- Inserindo dados na tabela cursos
-- O comando INSERT INTO é usado para inserir dados nas tabelas.
-- Aqui estamos inserindo alguns cursos como exemplo.
INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
('HTML5', 'Curso de HTML5 para iniciantes', 40, 37, 2014),
('Algoritmos', 'Lógica de Programação para iniciantes', 20, 15, 2014),
('Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
('MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
('Word', 'Curso completo de Microsoft Word', 40, 30, 2016),
('POO', 'Curso de Programação Orientada a Objetos', 50, 30, 2016),
('Redes', 'Curso de Redes para Iniciantes', 60, 35, 2016);  
-- No MySQL, seria o mesmo comando:
-- INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
-- ('HTML5', 'Curso de HTML5 para iniciantes', 40, 37, 2014),
-- ('Algoritmos', 'Lógica de Programação para iniciantes', 20, 15, 2014),
-- ('Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
-- ('MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
-- ('Word', 'Curso completo de Microsoft Word', 40, 30, 2016),
-- ('POO', 'Curso de Programação Orientada a Objetos', 50, 30, 2016),
-- ('Redes', 'Curso de Redes para Iniciantes', 60, 35, 2016);

-- Seleção simples de todos os cursos
-- Este comando seleciona todas as colunas de todos os registros da tabela cursos.
SELECT * FROM cursos;  
-- No MySQL, seria: SELECT * FROM cursos;

-- Seleção onde o nome do curso NÃO contém a letra 'A'
SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';  
-- No MySQL, seria: SELECT * FROM cursos WHERE nome NOT LIKE '%A%';

-- Atualizando o nome do curso com id = 9 para 'Pá00'
UPDATE cursos
SET nome = 'Pá00' 
WHERE id = 9;  
-- No MySQL, seria: UPDATE cursos SET nome = 'Pá00' WHERE id = 9;

-- Seleção por nome (buscando por cursos com nome 'PHP')
SELECT * FROM cursos
WHERE nome = 'PHP';  
-- No MySQL, seria: SELECT * FROM cursos WHERE nome = 'PHP';

-- Função de agregação para somar a carga total de aulas
SELECT SUM(totaulas) FROM cursos;  
-- No MySQL, seria: SELECT SUM(totaulas) FROM cursos;

-- Distinguindo os valores distintos da coluna "carga"
SELECT DISTINCT carga FROM cursos;  
-- No MySQL, seria: SELECT DISTINCT carga FROM cursos;

-- Wildcard com LIKE para buscar cursos cujo nome começa com 'PHP'
SELECT * FROM cursos
WHERE nome LIKE 'PHP%';  
-- No MySQL, seria: SELECT * FROM cursos WHERE nome LIKE 'PHP%';

-- Seleção com ordenação dos resultados pelo ano e nome (ordem crescente)
SELECT nome, ano FROM cursos
ORDER BY ano, nome;  
-- No MySQL, seria: SELECT nome, ano FROM cursos ORDER BY ano, nome;

-- Seleção filtrando por ano entre 2014 e 2016
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC, nome ASC;  
-- No MySQL, seria: SELECT nome, ano FROM cursos WHERE ano BETWEEN 2014 AND 2016 ORDER BY ano DESC, nome ASC;

-- Seleção filtrando por ano em um conjunto de anos específicos (2014 e 2016)
SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016)
ORDER BY ano;  
-- No MySQL, seria: SELECT nome, descricao, ano FROM cursos WHERE ano IN (2014, 2016) ORDER BY ano;

