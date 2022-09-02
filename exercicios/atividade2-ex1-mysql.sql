
/*
ATIVIDADE 1

Crie um banco de dados para um serviço de um Games Online. 
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
*/
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

/*
Crie a tabela tb_classes e determine pelo menos 2 atributos, 
além da Chave Primária, relevantes para classificar os personagens do Game Online.
*/

/*
Insira 5 registros na tabela tb_classes.
*/
create table tb_classes(
id_classe varchar(255) not null,
atk bigint not null,
def bigint not null,
hp bigint not null,
mp bigint not null,
crit bigint not null,
primary key(id_classe)
);

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("arqueiro", 2500, 1500, 1500, 1500, 80);

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("sacerdote", 2500, 1000, 1000, 3000, 20);

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("guerreiro", 2000, 3000, 2000, 1000, 50);

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("mago", 3000, 1000, 1000, 3000, 20) ;

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("barbaro", 1500, 2500, 3000, 1000, 40);

INSERT INTO tb_classes(id_classe, atk, def, hp, mp, crit) -- 1000 ~ 3000
VALUES("feiticeira", 2500, 1500, 1500, 2500, 25);

SELECT * FROM tb_classes;

/*
Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
relevantes aos personagens do Game Online.
*/
create table tb_personagens(
id_pers bigint auto_increment,
nickname varchar(255) not null,
pers_level bigint not null,
game_server varchar(255),
id_pers_classe varchar(255) not null,
primary key(id_pers),
/*
Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
*/
foreign key(id_pers_classe) references tb_classes(id_classe)
);

/*
Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira 
para criar a relação com a tabela tb_classes.
*/
INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("20matar70correr", 100, "BR", "arqueiro");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("20matar100medo", 100, "BR", "mago");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("ladybug", 100, "NA", "barbaro");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("dandelion", 100, "NA", "sacerdote");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("aquiles", 100, "SA", "feiticeira");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("noobmaster69", 100, "SA", "guerreiro");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("dob", 100, "BR", "sacerdote");

INSERT INTO tb_personagens(nickname, pers_level, game_server, id_pers_classe)
VALUES("grace", 100, "BR", "feiticeira");

SELECT * FROM tb_personagens;

/*
Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
*/
SELECT nickname, id_pers_classe, tb_classes.atk FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id_classe = tb_personagens.id_pers_classe
WHERE atk > 2000;

/*
Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.

Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
*/
SELECT nickname, id_pers_classe, tb_classes.def FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id_classe = tb_personagens.id_pers_classe
WHERE def > 1000 AND def < 2000;

/*
Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
*/
SELECT * FROM tb_personagens WHERE nickname LIKE "%C%";

/*
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens 
com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam 
a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
*/
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_classes.id_classe = tb_personagens.id_pers_classe
WHERE tb_classes.id_classe = "barbaro";


