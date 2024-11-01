create database dbmaternidade;
use dbmaternidade;

create table mae(
id_mae int auto_increment,
rg varchar(10),
endereco varchar(200),
telefone varchar(20),
data_nascimento date,
constraint PK_Mae primary key(id_mae));

create table medico(
crm int,
nome varchar(120),
telefone varchar(20),
especialidade varchar(100),
constraint PK_medico primary key(crm));


create table bebe(
id_bebe int auto_increment,
nome varchar(100),
data_nascimento date,
peso decimal(5,2),
altura int,
crm int NOT NULL,
id_mae int NOT NULL,
constraint PK_bebe primary key(id_bebe),
constraint FK_MaeBebe foreign key(id_mae) references mae(id_mae),
constraint FK_MedicoBebe foreign key(crm) references medico(crm));




