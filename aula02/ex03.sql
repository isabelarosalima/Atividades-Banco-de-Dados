-- Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.
CREATE TABLE filme (
    idFilme int primary key not null,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos uns 7 filmes.
INSERT INTO filme (titulo, genero, diretor) VALUES('Coraline', 'Stop Motion', 'Carlos Alberto'),
('A Noiva Cadáver', 'Stop Motion', 'Carlos Alberto'),
('Annabelle', 'terror', 'Anabeth Hills'),
('Sobenatural', 'terror', 'Anabeth Hills'),
('Minha mãe é uma peça', 'comédia', 'Tony Amendola'),
('Tal mãe, tal filha', 'comédia', 'Tony Amendola'),
('Você não está convidada pro meu bat mitzvá!', 'comédia', 'Tony Amendola');

-- • Exibir todos os dados da tabela.
select * from filme;

-- • Exibir apenas os títulos e os diretores dos filmes.
select (titulo, diretor) from filme;

-- • Exibir apenas os dados dos filmes de um determinado gênero.
select * from filme WHERE genero = 'comédia';

-- • Exibir apenas os dados dos filmes de um determinado diretor.
select * from filme WHERE diretor = 'Tony Amendola';

-- • Exibir os dados da tabela ordenados pelo título do filme.
select * from filme ORDER BY titulo;

-- • Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from filme ORDER BY diretor DESC;

-- • Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
select * from filme WHERE titulo LIKE 'V%';

-- • Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
select * from filme WHERE diretor LIKE '%a';

-- • Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select * from filme WHERE genero LIKE '_o%';

-- • Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from filme WHERE titulo LIKE '%l_'

-- • Elimine a tabela.
drop table filme;