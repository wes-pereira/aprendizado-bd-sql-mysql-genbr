-- Criar o Banco de Dados
create database db_quitanda;

-- Selecionar o db_quitanda
USE db_quitanda;

-- Criar a Tabela tb_produto
create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal,
primary key (id)
);

/* Inserindo dados na Tabela */

INSERT INTO tb_produto(nome, quantidade, data_validade, preco) 
VALUES ("tomate", 100, "2022-09-06", 10.0);

INSERT INTO tb_produto(nome, quantidade, data_validade, preco) 
VALUES ("laranja", 50, "2022-09-06", 5.0);

INSERT INTO tb_produto(nome, quantidade, data_validade, preco) 
VALUES ("chuchu", 40, "2022-09-15", 8.0);

INSERT INTO tb_produto(nome, quantidade, data_validade, preco) 
VALUES ("manga", 150, "2022-09-06", 5.9);

/* 
Consultar os dados 

--Estrutura--

SELECT colunas FROM tabela WHERE condicoes
*/

-- Visualizar todos os dados da tabela
SELECT * FROM tb_produtos;

-- Visualizar os dados selecionando colunas especídifas
SELECT nome, preco FROM tb_produtos;

-- Visualizar o produto cujo id é igual 1
SELECT * FROM tb_produtos WHERE id = 1;

-- Visualizar todos os produtos que tenham preço maior do que 5
SELECT * FROM tb_produtos WHERE preco > 5;

-- Visualizar todos os produtos que tenham preço maior do que 5 e preco menor do 100
SELECT * FROM tb_produtos WHERE preco > 5 AND preco < 100;

-- Visualizar todos os produtos que tenham preço maior ou igual a 10 ou nome igual a chuchu
SELECT * FROM tb_produtos WHERE preco >= 10 OR nome = "chuchu";

/* Alterações na Estrutura da Tabela */

-- Alterar o nome da tabela
ALTER TABLE tb_produto RENAME tb_produtos;

-- Alterar o tipo do atributo da tabela
ALTER TABLE tb_produtos MODIFY preco decimal(5, 2);

-- Adicionar mais uma coluna na tabela
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Excluir atributos da tabela
ALTER TABLE tb_produtos DROP descricao;

-- Deletar a Tabela INTEIRA
DROP TABLE tb_produtos;

/* Alterar os dados da tabela */

-- Alterar o preço para 10.52 e alterar o nome para uva
UPDATE tb_produtos SET preco = 10.52, nome = "uva" WHERE id = 1;

-- Deletar a uva
DELETE FROM tb_produtos WHERE id = 1;

-- Habilita tanto o Delete como Update sem Where
SET SQL_SAFE_UPDATES = 1;

-- Deletar a uva
DELETE FROM tb_produtos;


