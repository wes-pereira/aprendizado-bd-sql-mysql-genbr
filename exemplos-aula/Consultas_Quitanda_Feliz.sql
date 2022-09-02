-- Visualizar todos os produtos ordenados por nome
 SELECT * FROM tb_produtos ORDER BY nome;
 
 -- Visualizar todos os produtos ordenados por nome, mas por ordem decrescente
 SELECT * FROM tb_produtos ORDER BY nome DESC;
 
 /* Operadores IN e BETWEEN */
 
 -- O preço deve ser 5, 10 e 15 reais
 SELECT * FROM tb_produtos WHERE preco IN (5.0, 10.0, 15.0);
 
 -- O preço deve estar entre 5 e 15
 SELECT * FROM tb_produtos WHERE preco BETWEEN 5.0 AND 15.0 ORDER BY preco;
 
 -- A data de validade vai precisar estar entre 10 e 15 de março de 2022,
 -- em ordem crescente por data de validade e nome do produto
 SELECT * FROM tb_produtos WHERE dtvalidade BETWEEN "2022-03-10" AND "2022-03-15"
 ORDER BY dtvalidade, nome;
 
 /* Operador Like */
 
 -- Localizar todos os produtos inicie com ra
 SELECT * FROM tb_produtos WHERE nome LIKE "ra%";
 
  -- Localizar todos os produtos termine com ra
 SELECT * FROM tb_produtos WHERE nome LIKE "%ra";
 
-- Localizar todos os produtos que contenham ra em qualquer posição
 SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";
 
 /* Operadores Matemáticos */
 
 -- Conte o total de produtos que eu tenho na tb_produtos (exceto nulos)
 SELECT COUNT(*) AS total_produtos FROM tb_produtos;
 
  -- Conte o total de produtos que eu tenha categoria_id (exceto nulos)
 SELECT COUNT(categoria_id) AS total_categorias FROM tb_produtos;
 
 -- Some todos os preços dos produtos
 SELECT SUM(preco) AS soma_precos FROM tb_produtos;
 
 -- Media de preços dos produtos
 SELECT AVG(preco) AS media FROM tb_produtos;
 
 -- Agrupar a média dos preços pela categoria
 SELECT categoria_id, AVG(preco) AS media_preco FROM tb_produtos
 GROUP BY categoria_id;
 
-- Mostrar o maior preço
 SELECT MAX(preco) AS maior_preco FROM tb_produtos;
 
-- Mostrar o menor preço
SELECT MIN(preco) AS menor_preco FROM tb_produtos;

/* Operador Join */

-- Inner Join
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

-- Left Join
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

-- Right Join
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

 