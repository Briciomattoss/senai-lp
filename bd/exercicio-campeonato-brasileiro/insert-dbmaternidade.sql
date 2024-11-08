-- SQL DDL CREATE TABLE
create database dbmaternidade;
use dbmaternidade;

create table mae(
id_mae int auto_increment,
nome varchar(150),
rg varchar(10),
endereco varchar(200),
telefone varchar(20),
dt_nascimento date,
constraint PK_Mae primary key(id_mae)
);

create table medico(
crm int,
nome varchar(120),
telefone varchar(20),
especialidade varchar(100),
constraint PK_Medico primary key(crm)
);

create table bebe(
id_bebe int auto_increment,
nome varchar(100),
dt_nascimento date,
peso float(5,2),
altura int,
crm int not null,
id_mae int not null,
constraint PK_Bebe primary key(id_bebe),
constraint FK_BebeMedico foreign key(crm) references medico(crm),
constraint FK_BebeMae foreign key(id_mae) references mae(id_mae)
);

insert into medico(crm, nome, telefone, especialidade) values 
('1010','Dr. João Silva','(11)92345-6789','Pediatra'),
('1020','Dra. Maria Oliveira','(71)98765-4321','Pediatra'),
('1030','Dr. Carlos Santos','(21)91234-5678','Pediatra');

select * from medico;