show databases; -- visualizar as databases

create database campeonatobrasileiro; -- criar base de dados

status; -- visualiza principais configurações do banco de dados

use campeonatobrasileiro; -- entra em uma base de dados

-- cria uma nova tabela
create table estadio(
    id_estadio int primary key auto_increment,
    nome_estadio varchar(150) not null,
    endereco varchar(150),
    capacidade int);

    show tables; -- mostra as tabelas de uma base de dados

    desc estadios; -- descreve a estrutura de uma tabela 