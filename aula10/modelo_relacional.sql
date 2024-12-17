-- Criando a tabela cursos
-- A tabela cursos será criada com as colunas idcurso, nome, carga, totaulas e ano.
-- Esta tabela irá armazenar informações sobre cursos.
CREATE TABLE IF NOT EXISTS cursos (
    idcurso INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária que será incrementada automaticamente.
    nome VARCHAR(100) NOT NULL,  -- Nome do curso (obrigatório).
    carga INTEGER,  -- Carga horária do curso.
    totaulas INTEGER,  -- Total de aulas.
    ano INTEGER  -- Ano do curso.
);
-- No MySQL seria:
-- CREATE TABLE IF NOT EXISTS cursos (
--     idcurso INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     carga INT,
--     totaulas INT,
--     ano INT
-- );

-- Criando a tabela professores
-- A tabela professores armazena informações sobre os professores de cada curso.
-- A chave estrangeira idcurso será usada para vincular um professor a um curso específico.
CREATE TABLE IF NOT EXISTS professores (
    idprofessor INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária com incremento automático.
    nome VARCHAR(100) NOT NULL,  -- Nome do professor (obrigatório).
    idcurso INTEGER,  -- Chave estrangeira que faz referência à tabela cursos.
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)  -- Garantindo a integridade referencial entre as tabelas.
);
-- No MySQL seria:
-- CREATE TABLE IF NOT EXISTS professores (
--     idprofessor INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     idcurso INT,
--     FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
-- );

-- Inserindo dados na tabela cursos
INSERT INTO cursos (nome, carga, totaulas, ano) VALUES
('HTML5', 40, 37, 2014),
('Algoritmos', 20, 15, 2014),
('Photoshop', 10, 8, 2014),
('MySQL', 30, 15, 2016),
('Word', 40, 30, 2016),
('POO', 50, 30, 2016),
('Redes', 60, 35, 2016),
('Java', 30, 20, 2015),
('JavaScript', 25, 18, 2017),
('Python', 40, 25, 2018);

-- Inserindo dados na tabela professores
-- Neste caso, estamos associando cada professor a um curso. Alguns professores não estão associados a cursos ainda.
INSERT INTO professores (nome, idcurso) VALUES
('Carlos', 1),  -- Carlos ensina HTML5
('Maria', 2),  -- Maria ensina Algoritmos
('Felipe', 3),  -- Felipe ensina Photoshop
('Lucas', 4),  -- Lucas ensina MySQL
('Isabela', 5),  -- Isabela ensina Word
('Thiago', 6),  -- Thiago ensina POO
('Aline', 7),  -- Aline ensina Redes
('Ricardo', 8),  -- Ricardo ensina Java
('Juliana', NULL),  -- Juliana ainda não tem um curso atribuído
('Marcelo', NULL);  -- Marcelo ainda não tem um curso atribuído

-- Exemplo de INNER JOIN: Obtendo informações sobre cursos e professores
-- O INNER JOIN retorna apenas os registros que possuem correspondência nas duas tabelas.
-- Neste caso, estamos buscando cursos que têm professores atribuídos.
SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM cursos
INNER JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM cursos
-- INNER JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de LEFT JOIN: Obtendo todos os cursos, mesmo aqueles sem professores atribuídos
-- O LEFT JOIN retorna todos os registros da tabela à esquerda (cursos) e os registros correspondentes da tabela à direita (professores).
-- Se não houver correspondência, o resultado da tabela à direita será NULL.
SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM cursos
LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM cursos
-- LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de RIGHT JOIN: Obtendo todos os professores, incluindo aqueles sem cursos atribuídos
-- O RIGHT JOIN retorna todos os registros da tabela à direita (professores) e os registros correspondentes da tabela à esquerda (cursos).
-- Se não houver correspondência, o resultado da tabela à esquerda será NULL.
SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM cursos
RIGHT JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM cursos
-- RIGHT JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de SELECT com WHERE para filtrar os resultados
-- Buscando cursos que foram lançados em 2016 ou após, e professores que não têm curso atribuído.
SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM cursos
LEFT JOIN professores ON cursos.idcurso = professores.idcurso
WHERE cursos.ano >= 2016 OR professores.idcurso IS NULL;

-- No MySQL seria o mesmo comando:
-- SELECT cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM cursos
-- LEFT JOIN professores ON cursos.idcurso = professores.idcurso
-- WHERE cursos.ano >= 2016 OR professores.idcurso IS NULL;

-- Exemplo de GROUP BY com HAVING: Contando o número de cursos por ano, mas apenas para anos com mais de 2 cursos
SELECT ano, COUNT(nome) AS num_cursos
FROM cursos
GROUP BY ano
HAVING COUNT(nome) > 2;

-- No MySQL seria o mesmo comando:
-- SELECT ano, COUNT(nome) AS num_cursos
-- FROM cursos
-- GROUP BY ano
-- HAVING COUNT(nome) > 2;

