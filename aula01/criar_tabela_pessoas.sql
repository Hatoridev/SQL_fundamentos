-- Cria uma tabela chamada "pessoas"
CREATE TABLE pessoas ( 

    -- Define a coluna "nome" como um campo de texto com no máximo 30 caracteres
    nome VARCHAR(30), 

    -- Define a coluna "idade" como um número inteiro pequeno (0 a 255)
    idade TINYINT, 

    -- Define a coluna "sexo" como um campo de texto de 1 caractere
    sexo CHAR(1), 

    -- Define a coluna "peso" como um número decimal de precisão flutuante
    peso FLOAT, 

    -- Define a coluna "altura" como um número decimal de precisão flutuante
    altura FLOAT, 

    -- Define a coluna "nacionalidade" como um campo de texto com no máximo 28 caracteres
    nacionalidade VARCHAR(28) 

); 

