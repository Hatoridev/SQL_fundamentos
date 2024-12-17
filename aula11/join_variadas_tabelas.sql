-- Criando a tabela cursos
-- A tabela cursos vai armazenar os cursos disponíveis, com campos de idcurso, nome, carga, totaulas e ano.
CREATE TABLE IF NOT EXISTS cursos (
    idcurso INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária para cada curso.
    nome VARCHAR(100) NOT NULL,  -- Nome do curso (obrigatório).
    carga INTEGER,  -- Carga horária do curso.
    totaulas INTEGER,  -- Total de aulas do curso.
    ano INTEGER  -- Ano em que o curso foi oferecido.
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
-- Armazena informações sobre os professores, com idprofessor, nome e o idcurso (chave estrangeira que referencia a tabela cursos).
CREATE TABLE IF NOT EXISTS professores (
    idprofessor INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária do professor.
    nome VARCHAR(100) NOT NULL,  -- Nome do professor (obrigatório).
    idcurso INTEGER,  -- Chave estrangeira que referencia a tabela cursos.
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)  -- Garante a integridade referencial.
);
-- No MySQL seria:
-- CREATE TABLE IF NOT EXISTS professores (
--     idprofessor INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100) NOT NULL,
--     idcurso INT,
--     FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
-- );

-- Criando a tabela alunos
-- A tabela alunos armazena informações sobre os alunos, com idaluno, nome e idcurso (chave estrangeira).
CREATE TABLE IF NOT EXISTS alunos (
    idaluno INTEGER PRIMARY KEY AUTOINCREMENT,  -- Chave primária do aluno.
    nome VARCHAR(100) NOT NULL,  -- Nome do aluno (obrigatório).
    idcurso INTEGER,  -- Chave estrangeira que referencia a tabela cursos.
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)  -- Garante a integridade referencial.
);
-- No MySQL seria:
-- CREATE TABLE IF NOT EXISTS alunos (
--     idaluno INT AUTO_INCREMENT PRIMARY KEY,
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
-- Associando cada professor a um curso.
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

-- Inserindo dados na tabela alunos
-- Associando alunos a cursos específicos.
INSERT INTO alunos (nome, idcurso) VALUES
('João', 1),  -- João é aluno de HTML5
('Pedro', 2),  -- Pedro é aluno de Algoritmos
('Ana', 3),  -- Ana é aluna de Photoshop
('Lucia', 4),  -- Lucia é aluna de MySQL
('Felipe', 5),  -- Felipe é aluno de Word
('Amanda', 6),  -- Amanda é aluna de POO
('Paulo', 7),  -- Paulo é aluno de Redes
('Ricardo', 8),  -- Ricardo é aluno de Java
('Carlos', NULL),  -- Carlos ainda não está matriculado em nenhum curso
('Marcelo', NULL);  -- Marcelo ainda não está matriculado em nenhum curso

-- Exemplo de INNER JOIN com três tabelas
-- Vamos buscar os alunos que têm cursos atribuídos e exibir os cursos, professores e alunos associados.
SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM alunos
INNER JOIN cursos ON alunos.idcurso = cursos.idcurso
INNER JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM alunos
-- INNER JOIN cursos ON alunos.idcurso = cursos.idcurso
-- INNER JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de LEFT OUTER JOIN: Buscando todos os alunos, inclusive os que não têm curso atribuído.
SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM alunos
LEFT JOIN cursos ON alunos.idcurso = cursos.idcurso
LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM alunos
-- LEFT JOIN cursos ON alunos.idcurso = cursos.idcurso
-- LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de RIGHT OUTER JOIN: Buscando todos os professores, incluindo os que não têm cursos atribuídos.
SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
FROM alunos
RIGHT JOIN cursos ON alunos.idcurso = cursos.idcurso
RIGHT JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT alunos.nome AS aluno_nome, cursos.nome AS curso_nome, professores.nome AS professor_nome
-- FROM alunos
-- RIGHT JOIN cursos ON alunos.idcurso = cursos.idcurso
-- RIGHT JOIN professores ON cursos.idcurso = professores.idcurso;

-- Exemplo de LEFT JOIN: Buscando todos os cursos, inclusive os cursos sem alunos ou professores.
SELECT cursos.nome AS curso_nome, alunos.nome AS aluno_nome, professores.nome AS professor_nome
FROM cursos
LEFT JOIN alunos ON cursos.idcurso = alunos.idcurso
LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

-- No MySQL seria o mesmo comando:
-- SELECT cursos.nome AS curso_nome, alunos.nome AS aluno_nome, professores.nome AS professor_nome
-- FROM cursos
-- LEFT JOIN alunos ON cursos.idcurso = alunos.idcurso
-- LEFT JOIN professores ON cursos.idcurso = professores.idcurso;

