create database dbclinica;
use dbclinica;

create table sala(
numero_sala int auto_increment check(numero_sala > 1 and numero_sala < 50),
andar int not null check(andar < 12),
constraint PK_Numero_Sala primary key(numero_sala));





