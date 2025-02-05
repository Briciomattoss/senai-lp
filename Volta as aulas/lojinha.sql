create database lojinha;

use lojinha;

create table cliente(
id int,
nome varchar(100) not null,
constraint PK_cliente primary key (id));

create table email_cliente(
id int,
email varchar(100),
id_cliente int,
constraint PK_email_cliente primary key (id),
constraint FK_id_cliente foreign key (id_cliente) references cliente(id));

create table pedido(
id int,
data date,
id_cliente int,
constraint PK_pedido primary key(id),
constraint FK_pedido_cliente foreign key (id_cliente) references cliente(id));

create table produto(
id int,
descricao varchar(200),
id_categoria int,
id_fornecedor int,
estoque int,
constraint PK_produto primary key(id));

create table categoria(
id int,
nome varchar(100),
constraint PK_categoria primary key(id));

alter table produto
add constraint FK_produto_categoria foreign key (id_categoria) references categoria(id);


create table fornecedor(
id int,
nome varchar(100),
constraint PK_fornecedor primary key(id));

alter table produto
add constraint FK_produto_fornecedor foreign key (id_fornecedor) references fornecedor(id);

create table pedido_produto(
id int,
id_pedido int,
id_produto int,
quantidade int,
constraint PK_pedido_produto primary key(id),
constraint FK_pedidoproduto_pedido foreign key (id_pedido) references pedido(id),
constraint FK_pedidoproduto_produto foreign key (id_produto) references produto(id));


select * from cliente;

INSERT INTO Cliente (id, nome) VALUES
(1, 'Ana'),
(2, 'José'),
(3, 'João');

INSERT INTO email_cliente (id, email, idCliente) VALUES
(1, 'e1',1),
(2, 'e2',1),
(3, 'e3',2),
(4, 'e4',2),
(5, 'e5',3);



INSERT INTO pedido VALUES
(1,'2015-10-15',1),
(2,'2014-12-31',1),
(3,'2010-09-10',2);

select * from categoria;

INSERT INTO categoria VALUES
(1,'Ferramenta');














-- SELECTS

Select * from cliente as c
Inner join email_cliente on c.id = id.cliente








