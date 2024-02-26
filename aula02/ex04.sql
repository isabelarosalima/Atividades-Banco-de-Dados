-- Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50), especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da tabela.Exemplo do campo data: ‘AAAA-MM-DD’ - ‘1983-10-13’.
CREATE TABLE professor (
    idProfessor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date
);

-- Inserir dados na tabela, procurando colocar uma especialista para mais de um professor. Procure inserir pelo menos uns 6 professores.
insert into professor (nome, especialidade, dtNasc) VALUES
('Vivian', 'Banco de dados', '1975-10-13'),
('Marcelo', 'Banco de dados', '2004-10-23'),
('Jp', 'Algoritimos', '1985-08-13'),
('Caio', 'Algoritimos', '1985-08-13'),
('Vera', 'Socioemocional', '1989-07-17'),
('Betina', 'Socioemocional', '2000-11-01');

-- a) Exibir todos os dados da tabela.
select * from professor;

-- b) Exibir apenas as especialidades dos professores.
select (especialidade) from professor;

-- c) Exibir apenas os dados dos professores de uma determinada especialidade.
select * from professor WHERE especialidade = 'Banco de Dados';

-- d) Exibir os dados da tabela ordenados pelo nome do professor.
select * from professor ORDER BY nome;

-- e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
select * from professor ORDER BY dtNasc DESC;

-- f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select * from professor WHERE nome LIKE 'V%';

-- g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
select * from professor WHERE nome LIKE '%o';

-- h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma  determinada letra.
select * from professor WHERE nome LIKE '_a%';

-- i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma  determinada letra.
select * from professor WHERE nome LIKE '%n_';

-- j) Elimine a tabela
drop table professor;