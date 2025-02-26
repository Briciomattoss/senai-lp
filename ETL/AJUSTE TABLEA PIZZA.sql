use pizzaria;

select * from pizza;

ALTER TABLE pizza ADD COLUMN preco DECIMAL(6,2);


ALTER TABLE pizza DROP COLUMN preco;

UPDATE pizza SET preco = 33.00 WHERE id_pizza = 6;