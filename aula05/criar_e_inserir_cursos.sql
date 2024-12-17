-- Criando o banco de dados "cursos.db" (se não existir)
-- Este comando cria a tabela "cursos" com informações de cursos oferecidos.
-- Está definido o tipo de dados para cada coluna, como INT, VARCHAR, e o valor padrão para o ano.

CREATE TABLE IF NOT EXISTS cursos (
    -- idcurso é a chave primária da tabela, identificando unicamente cada curso
    idcurso INT PRIMARY KEY,

    -- nome do curso, que não pode ser nulo
    nome VARCHAR(30) NOT NULL,

    -- descrição do curso, que pode conter uma quantidade significativa de texto
    descricao TEXT,

    -- carga horária do curso em horas
    carga INT,

    -- total de aulas ministradas
    totaulas INT,

    -- ano do curso, com valor padrão '2016'
    ano YEAR DEFAULT '2016'
);

-- Inserindo dados na tabela "cursos"
INSERT INTO cursos (idcurso, nome, descricao, carga, totaulas, ano) VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Java', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018');

-- Abaixo, mostramos como manipular as linhas da tabela usando UPDATE, DELETE e TRUNCATE.

-- Exemplo de UPDATE: Atualizando a carga horária do curso 'Word' para 50 horas
UPDATE cursos
SET carga = 50
WHERE nome = 'Word';

-- Exemplo de DELETE: Removendo o curso 'Java' da tabela
DELETE FROM cursos
WHERE nome = 'Java';

-- Exemplo de TRUNCATE: Apagando todos os registros da tabela "cursos"
-- Este comando remove todos os registros da tabela, mas mantém a estrutura da tabela intacta.
-- É um comando mais rápido e eficiente do que usar DELETE sem WHERE.
DELETE FROM cursos;

-- Outra maneira de excluir todos os dados sem apagar a tabela: TRUNCATE TABLE cursos;
-- Contudo, o comando TRUNCATE pode não ser suportado em todos os bancos de dados, então é preferível usar o DELETE em SQLite.

-- Selecionando todos os dados da tabela "cursos" para verificação
SELECT * FROM cursos;

