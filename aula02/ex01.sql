--  No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
CREATE TABLE sprint1;
USE sprint1;

-- • Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha(int, representando a quantidade de medalhas que o atleta possui);

CREATE TABLE atleta (
idAtleta int primary key not null,
nome varchar(40),
modalidade varchar(40),
qntMedalha int
);

-- • Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade
INSERT INTO atleta (nome, modalidade, qntMedalha)values 
('Rafael', 'Natação', 2),
('Marcelo', 'Natação', 4),
('Janaina', 'Basquete', 5),
('Julia', 'Basquete', 8),
('Giovanna', 'Volei', 5),
('Paulo', 'Volei', 1);

-- Escreva e execute os comandos para:
-- • Exibir todos os dados da tabela.
select * from atleta;

-- • Exibir apenas os nomes e quantidade de medalhas dos atletas.
select (nome, qntMedalha) from atleta;

-- • Exibir apenas os dados dos atletas de uma determinada modalidade.
select * from atleta 
WHERE modalidade = 'basquete';

-- • Exibir os dados da tabela ordenados pela modalidade.
select * from atleta 
ORDER BY modalidade;

-- • Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente.
select * from atleta
ORDER BY modalidade DESC;

-- • Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta
WHERE nome LIKE '%s%';

-- • Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.
select * from atleta
WHERE nome LIKE 'G%'

-- • Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.
select * from atleta
WHERE nome LIKE '%o'

-- • Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.
select * from atleta
WHERE nome LIKE '%r_';

-- • Eliminar a tabela
drop table atleta;