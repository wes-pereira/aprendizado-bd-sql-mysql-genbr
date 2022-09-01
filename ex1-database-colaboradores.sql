
/*
ATIVIDADE 1
Crie um banco de dados para um serviço de RH de uma empresa, 
onde o sistema trabalhará com as informações dos colaboradores desta empresa.
*/
create database db_colaboradores;

USE db_colaboradores;

/*
Crie uma tabela de colaboradores e determine 5 atributos relevantes 
dos colaboradores para se trabalhar com o serviço deste RH.
*/
create table tb_dadoscolab(
id_CPF varchar(255) not null,
nome varchar(255) not null,
idade int,
setor varchar(255) not null,
funcao varchar(255) not null,
primary key (id_cpf)
);

ALTER TABLE tb_dadoscolab RENAME COLUMN id_CPF TO id_cpf; -- Correção: renomeando o id_cpf

SELECT * FROM tb_dadoscolab;

/*
Insira nesta tabela no mínimo 5 dados (registros).
*/
INSERT INTO tb_dadoscolab(id_cpf, nome, idade, setor, funcao)
VALUES ("11122233344", "Neymar Junior", 30, "producao", "op_empilhadeira");

INSERT INTO tb_dadoscolab(id_cpf, nome, idade, setor, funcao)
VALUES ("22233344455", "Lionel Messi", 35, "lojistica", "Caminhoneiro");

INSERT INTO tb_dadoscolab(id_cpf, nome, idade, setor, funcao)
VALUES ("33344455566", "Cristiano Ronaldo", 37, "estoque", "estoquista");

INSERT INTO tb_dadoscolab(id_cpf, nome, idade, setor, funcao)
VALUES ("44455566677", "Karim Benzema", 34, "marketing", "estagiario");

INSERT INTO tb_dadoscolab(id_cpf, nome, idade, setor, funcao)
VALUES ("55566677788", "Kylian Mbappe", 23, "direcao", "dono");

ALTER TABLE tb_dadoscolab ADD salario decimal; -- Inserindo aqui a coluna de salários, havia esquecido.
ALTER TABLE tb_dadoscolab MODIFY salario decimal(10, 2); -- Corrigindo o formato e casas decimais do salário

UPDATE tb_dadoscolab SET salario = 2400.00 WHERE id_cpf = "11122233344";

UPDATE tb_dadoscolab SET salario = 3000.00 WHERE id_cpf = "22233344455";

UPDATE tb_dadoscolab SET salario = 1550.00 WHERE id_cpf = "33344455566";

UPDATE tb_dadoscolab SET salario = 900.00 WHERE id_cpf = "44455566677";

UPDATE tb_dadoscolab SET salario = 175000.00 WHERE id_cpf = "55566677788";

/*
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
*/
SELECT nome FROM tb_dadoscolab WHERE salario > 2000.00;

/*
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
*/
SELECT nome FROM tb_dadoscolab WHERE salario < 2000.00;

/*
Ao término atualize um registro desta tabela através de uma query de atualização.
*/
UPDATE tb_dadoscolab SET salario = 200000.00 WHERE id_cpf = "55566677788";

/*
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
[FEITO]
*/ -- [FEITO]


