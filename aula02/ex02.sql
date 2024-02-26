-- No MySQL Workbench, utilizando o banco de dados ‘sprint1’:
USE sprint1;

-- Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
CREATE TABLE musica (
    idMusica INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo varchar(40), 
    artista varchar(40),
    genero varchar(40)
);

-- Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo menos umas 7 músicas.

INSERT INTO musica (titulo, artista, genero)
VALUES 
    ('eu', 'Rock', 'Gracie'),
    ('21', 'Rock', 'Gracie'),
    ('work', 'Pop', 'Byonce'),
    ('siren', 'Pop', 'Byonce'),
    ('wait a minute', 'Hip Hop', 'Michel'),
    ('maniac', 'Hip Hop', 'Michel'),
    ('chosen', 'Electro', 'Godzillaz');

-- a) Exibir todos os dados da tabela.
select * from musica;

-- b) Exibir apenas os títulos e os artistas das músicas.
select (titulo, artista) from musica;

-- c) Exibir apenas os dados das músicas de um determinado gênero.
select * from musica
 WHERE genero = 'Rock';

-- d) Exibir apenas os dados das músicas de um determinado artista.
select * from musica
 WHERE artista = 'Michel';

-- e) Exibir os dados da tabela ordenados pelo título da música.
select * from musica ORDER BY titulo;

-- f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.
select * from musica ORDER BY artista DESC;

-- g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.
select * from musica WHERE titulo LIKE 'c%';

-- h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.
select * from musica WHERE artista LIKE '%a'

-- i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma determinada letra.
select * from musica WHERE genero LIKE '_i%'

-- j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma determinada letra.
select * from musica WHERE titulo LIKE '%a_'

-- k) Elimine a tabela
drop table musica;