use pizzaria;

select * from pizza;

ALTER TABLE pizza ADD COLUMN preco DECIMAL(6,2);


ALTER TABLE pizza DROP COLUMN preco;
