-- Criando a tabela cursos
-- A tabela cursos será criada com as colunas: id, nome, carga, totaulas, e ano.
CREATE TABLE IF NOT EXISTS cursos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Coluna id, chave primária com incremento automático.
    nome VARCHAR(100) NOT NULL,  -- Nome do curso, obrigatório.
    descricao TEXT,  -- Descrição do curso, tipo texto.
    carga INTEGER,  -- Carga horária do curso (em horas).
    totaulas INTEGER,  -- Total de aulas do curso.
    ano INTEGER  -- Ano de lançamento do curso.
);  
-- No MySQL, a sintaxe seria similar: CREATE TABLE IF NOT EXISTS cursos (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     descricao TEXT,
--     carga INT,
--     totaulas INT,
--     ano INT
-- );

-- Inserindo dados na tabela cursos
-- O comando INSERT INTO insere novos dados na tabela cursos.
INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
('HTML5', 'Curso de HTML5 para iniciantes', 40, 37, 2014),
('Algoritmos', 'Lógica de Programação para iniciantes', 20, 15, 2014),
('Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
('MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
('Word', 'Curso completo de Microsoft Word', 40, 30, 2016),
('POO', 'Curso de Programação Orientada a Objetos', 50, 30, 2016),
('Redes', 'Curso de Redes para Iniciantes', 60, 35, 2016),
('Java', 'Curso de Java para desenvolvedores', 30, 20, 2015),
('JavaScript', 'Introdução ao JavaScript', 25, 18, 2017),
('Python', 'Curso de Python para análise de dados', 40, 25, 2018);  
-- No MySQL, o comando seria o mesmo:
-- INSERT INTO cursos (nome, descricao, carga, totaulas, ano) VALUES
-- ('HTML5', 'Curso de HTML5 para iniciantes', 40, 37, 2014),
-- ('Algoritmos', 'Lógica de Programação para iniciantes', 20, 15, 2014),
-- ('Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
-- ('MySQL', 'Bancos de Dados MySQL', 30, 15, 2016),
-- ('Word', 'Curso completo de Microsoft Word', 40, 30, 2016),
-- ('POO', 'Curso de Programação Orientada a Objetos', 50, 30, 2016),
-- ('Redes', 'Curso de Redes para Iniciantes', 60, 35, 2016),
-- ('Java', 'Curso de Java para desenvolvedores', 30, 20, 2015),
-- ('JavaScript', 'Introdução ao JavaScript', 25, 18, 2017),
-- ('Python', 'Curso de Python para análise de dados', 40, 25, 2018);

-- Distinguindo registros únicos na coluna "carga"
-- O comando SELECT DISTINCT é usado para retornar apenas valores distintos (sem repetição) de uma coluna.
SELECT DISTINCT carga FROM cursos
ORDER BY carga;  
-- No MySQL, seria o mesmo comando: SELECT DISTINCT carga FROM cursos ORDER BY carga;

-- Agrupando registros pela carga
-- O comando GROUP BY agrupa os resultados com base nos valores de uma ou mais colunas.
SELECT carga FROM cursos
GROUP BY carga;  
-- No MySQL, seria o mesmo comando: SELECT carga FROM cursos GROUP BY carga;

-- Agrupando registros e agregando dados com a função COUNT
-- O comando COUNT conta o número de registros em cada grupo.
-- O comando HAVING é usado para filtrar os grupos após a agregação (diferente do WHERE, que filtra antes da agregação).
SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga
HAVING COUNT(nome) > 3;  
-- No MySQL, seria o mesmo comando: SELECT carga, COUNT(nome) FROM cursos GROUP BY carga HAVING COUNT(nome) > 3;

-- Agrupando e ordenando os resultados
-- Podemos combinar GROUP BY com ORDER BY para ordenar os grupos de acordo com uma coluna.
SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga
ORDER BY COUNT(nome) DESC;  
-- No MySQL, seria o mesmo comando: SELECT carga, COUNT(nome) FROM cursos GROUP BY carga ORDER BY COUNT(nome) DESC;

