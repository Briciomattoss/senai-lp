create database bdloja;
use bdloja;

create table cliente(
id_cliente int auto_increment,
limite_credito decimal(5,2),
status varchar(10),
cep varchar(10),
logradouro varchar(200),
constraint PK_Cliente primary key(id_cliente));

create table pedido(
id_pedido int auto_increment,
data date,
total_pediddo decimal(5,2),
id_cliente int NOT NULL,
constraint PK_pedido primary key(id_pedido),
constraint FK_ClientePedido foreign key(id_cliente) references cliente(id_cliente));

create table categoria(
id_categoria int auto_increment,
nome varchar(100),
constraint PK_categoria primary key(id_categoria));

create table produto(
id_produto int auto_increment,
nome varchar(100),
preco decimal(5,2),
id_categoria int NOT NULL,
constraint PK_produto primary key(id_produto),
constraint FK_CategoriaProduto foreign key(id_categoria) references categoria(id_categoria));

create table rl_pedido_produto(
id_produto int NOT NULL,
id_pedido int NOT NULL,
quantidade int,
constraint PK_PedidoProduto primary key(id_produto,id_pedido),
constraint FK_RlPedido foreign key(id_pedido) references pedido(id_pedido),
constraint FK_RlProduto foreign key(id_produto) references produto(id_produto));



