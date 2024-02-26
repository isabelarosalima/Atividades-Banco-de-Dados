-- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
CREATE TABLE curso (
    idCurso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(50),
    sigla CHAR(3),
    coordenador VARCHAR(50)
);

-- Inserir dados na tabela, procure inserir pelo menos 3 cursos.
('Análise e desenvolvimento de sistemas', 'ADS', 'Sérgio' ),
('Ciências da computação', 'CCO', 'Vera'),
('Sistema da informação', 'SIS', 'Brandão');

-- a) Exibir todos os dados da tabela.
select * from curso;

-- b) Exibir apenas os coordenadores dos cursos.
select (coordenador) from curso;
 
-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
select * from curso WHERE sigla = 'ADS';

-- d) Exibir os dados da tabela ordenados pelo nome do curso.
select * from curso ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
select * from curso ORDER BY nome DESC;

-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
select * from curso WHERE nome LIKE 'S%';

-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
select * from curso WHERE nome LIKE '%a';

-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
select * from curso WHERE nome LIKE '_i%';

-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
select * from curso WHERE nome LIKE '%o_';

-- j) Elimine a tabela
drop table curso;