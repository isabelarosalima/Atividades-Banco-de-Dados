-- Criar a tabela chamada Revista para conter os campos: idRevista (int e chave primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente pelo sistema.
CREATE TABLE revista (
    idRevista int primary key AUTO_INCREMENT not null,
    nome varchar(40),
    categoria varchar(30)
);

-- • Inserir 4 registros na tabela, mas sem informar a categoria.
INSERT INTO revista (nome) VALUES
('Veja'),
('Capricho'),
('VOGUE'),
('DAZED');

-- • Exibir todos os dados da tabela.
select * from revista;

-- • Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
UPDATE revista 
    SET categoria = 'moda'
    WHERE idRevista IN (3,4);

UPDATE revista 
    SET categoria = 'teen'
    WHERE nome = 'Capricho';

UPDATE revista 
    SET categoria = 'curiosidades'
    WHERE idRevista = 1;

select * from revista;

-- • Insira mais 3 registros completos.
INSERT INTO revista (nome, categoria) VALUES
('Istoé', 'atualidade'),
('Newsweek', 'atualidade'),
('National Geographic', 'científica');

-- • Exibir novamente os dados da tabela.
select * from revista;

-- • Exibir a descrição da estrutura da tabela.
DESC revista;

-- • Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
ALTER TABLE revista MODIFY COLUMN categoria varchar(40);

-- • Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
DESC revista;

-- • Acrescentar a coluna periodicidade à tabela, que é varchar(15).
ALTER TABLE revista ADD COLUMN periodicidade varchar(15);

-- • Exibir os dados da tabela.
select * from revista;

-- • Excluir a coluna periodicidade da tabela.
ALTER TABLE revista DROP COLUMN periodicidade;