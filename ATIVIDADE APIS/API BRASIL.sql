CREATE DATABASE Brasil;

USE Brasil;

Create table regiao(
id_regiao INT NOT NULL PRIMARY KEY,
sigla VARCHAR(2),
nome VARCHAR(100)
);

Create table estado(
id_estado INT NOT NULL PRIMARY KEY,
sigla VARCHAR(2),
nome VARCHAR(100),
id_regiao INT
);

ALTER TABLE estado ADD FOREIGN KEY (id_regiao) REFERENCES regiao(id_regiao);

Create table municipio(
id_municipio INT NOT NULL PRIMARY KEY,
nome VARCHAR(100),
id_estado INT
);

ALTER TABLE municipio ADD FOREIGN KEY (id_estado) REFERENCES estado(id_estado);

