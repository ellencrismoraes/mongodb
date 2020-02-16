create database cocozinho; 
use cocozinho;
create table pessoa(
id int not null auto_increment,
mone varchar(50) not null, 
sobre_nome varchar(50) not null,
idade int not null,
sexo varchar(50) not null,
cpf varchar(50) not null,
Constraint pk_pessoa primary key(id)
);
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values('italo', 'santos de jesus', 25, 'masculino', '87269449-79');
select * from pessoa;
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values('Ellen', 'Moraes da silva', 19, 'feminino', '503033308-80');
select * from pessoa;
delete from pessoa where id = 1;
update pessoa set sexo = 'Masculino' where id = 2;
select * from pessoa;
desc pessoa;
select * from pessoa;
delete from pessoa where id = 2;
select * from pessoa;
insert into pessoa( mone, sobre_nome, idade, sexo, cpf) values( 'Pedro', 'Silva', '20', 'masculino','400.882.000-00');
insert into pessoa(mone, sobre_nome, idade, sexo,cpf) values( 'Alexandre', 'rodrigues', '19', 'masculino', '014.522.610-75');
select * from pessoa;
insert into pessoa( mone, sobre_nome, idade, sexo, cpf) values( 'Larissa', 'Manuela', '18', 'feminino', '785.933.510-77');
insert into pessoa( mone, sobre_nome, idade, sexo, cpf) values( 'Rafael', 'Souza', '30', 'masculino', '438.663.950-00');
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values( 'Marcelo', 'Silva', '22', 'masculino', '973.599.600-61');
insert into pessoa(mone, sobre_nome, idade, sexo,cpf) values( 'Mariana', 'carvalho', '19', 'feminino', '624.468.090-14');
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values( 'Antonieta', 'machado', '31', 'feminino', '096.397.130-15');
insert into pessoa(mone, sobre_nome, idade, sexo,cpf) values( 'Maicon', 'caio', '20', 'masculino', '617.838.330-41');
insert into pessoa(mone, sobre_nome,idade, sexo, cpf) values( 'Bruna', 'caetano', '26', 'feminino', '370.208.000-76');
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values( 'Fernanda', 'leite', '18', 'feminino', '784.814.290-66');
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values( 'Marta', 'soares', '25', 'feminino', '772.795.840-98');
insert into pessoa(mone, sobre_nome, idade, sexo, cpf) values('Igor', 'gabriel', '20', 'masculino', '769.054.060-07');
update pessoa set sexo = 'masculino' where id = 6;
update pessoa set sexo = 'masculino' where id = 8;
update pessoa set sexo= 'masculino' where id = 12;
update pessoa set sexo = 'masculino' where id = 16;
update pessoa set sexo = 'feminino' where id = 9; 
update pessoa set idade = '18' where id = 3;
select * from pessoa;
delete from pessoa where id = 3;
delete from pessoa where id = 4;
delete from pessoa where id = 9;
delete from pessoa where id = 10;
delete from pessoa where id = 5;
 
 ------------------------------------------------------------------------------------------------------------------------------------------
 
  create database emporioNatural;
  
  use emporionatural;
  
drop table tipo;
CREATE TABLE Pessoa
 (
     ID_Pessoa integer PRIMARY KEY AUTO_INCREMENT,
     Nome varchar(255),
     Endereco varchar(255),
     Cidade varchar(255)
 );


DESC PESSOA;

ALTER TABLE PESSOA ADD COLUMN CARGO varchar(50) NOT NULL;

 CREATE TABLE Carro
 (
     ID_Carro integer PRIMARY KEY AUTO_INCREMENT,
     Nome varchar(255),
     Marca varchar(255),
     ID_Pessoa integer,
     CONSTRAINT fk_PesCarro FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
 );
 
 insert into pessoa(nome, endereco, cidade) values ('valeria', 'antonio coimbra', 'sao paulo');
 insert into carro(nome, marca, id_pessoa) values ('Uno', 'Fiat', 1);

 select * from pessoa;
 select * from carro;

select p.nome as 'Nome do Cliente', p.cidade, p.cargo,p.sexo,P.IDADE,c.nome as 'Nome do Carro', c.marca, c.id_pessoa from pessoa p
   inner join carro c on c.id_carro = p.id_pessoa 
where p.cargo = 'ATENDENTE'
AND P.IDADE = 25
 ORDER BY 1 DESC;

DESC PESSOA; 

INSERT INTO PESSOA(NOME, ENDERECO, CIDADE, IDADE,SEXO,EMPRESA,CARGO) VALUES ('MATHEUS', 'RUA ALVINOPOLIS',' SAO PAULO', '20', 'M', 'HAPPYFIT', 'PROF ED');
INSERT INTO PESSOA(NOME, ENDERECO, CIDADE, IDADE,SEXO,EMPRESA,CARGO) VALUES ('hENRIQUE','MAIRIPORAO','SAO PAULO','23','M','MCDONALDS','ATENDENTE');
INSERT INTO PESSOA(NOME, ENDERECO, CIDADE, IDADE,SEXO,EMPRESA,CARGO) VALUES ('LARISSA','CAIEIRAS','SAO PAULO','25','F','BK','ATENDENTE');
INSERT INTO PESSOA(NOME, ENDERECO, CIDADE, IDADE,SEXO,EMPRESA,CARGO) VALUES ('MARCIO','PARAISOPOLIS','RIO DE JANEIRO','32','M','SUBWAY','SUPERVISOR');
INSERT INTO PESSOA(NOME, ENDERECO, CIDADE, IDADE,SEXO,EMPRESA,CARGO) VALUES ('CAROL','MOJI','PARÁ','27','F','PANELA DE BARRO','COZINHEIRA');
SELECT * FROM PESSOA;

DESC CARRO;

INSERT INTO CARRO(NOME, MARCA,ID_PESSOA) VALUES ('LOGAN', 'RENAULT', 6);
INSERT INTO CARRO(NOME, MARCA,ID_PESSOA) VALUES ('PALIO', 'FIAT', 5);
INSERT INTO CARRO(NOME, MARCA,ID_PESSOA) VALUES ('HB20', 'Hyundai', 4);
INSERT INTO CARRO(NOME, MARCA,ID_PESSOA) VALUES ('Voyage', 'Volkswagen', 3);

update pessoa set ENDERECO = 'MAIRIPORA' WHERE ID_PESSOA = 3;

-##########################################################################################################################################################333

create database casa;

use casa;

drop table tipo;

create table funçoes
( id_pessoa integer primary key auto_increment,
nome varchar (50),
qualidade varchar (50),
preço varchar(50)
);

-----------------------------------------------------------------------------------------------------------------------------------------------------

create database empresa;

use emporionatural;

create table empresa(
ID_empresa integer primary KEY auto_increment,
Nome varchar(255),
Endereco varchar (255)
);

create table produtos(
Id_prod integer primary key auto_increment,
nome varchar(255),
modelo varchar (255),
id_empresa integer,
constraint FK_empprod foreign key (id_empresa) references empresa (id_empresa)
);

insert into empresa (nome, endereco) values ('Samsung', 'Nova York');
insert into produtos (nome, modelo, id_empresa) values ('galaxy', 'S10', 1); 

select * from empresa;
select * from produtos;

select e.Nome as 'Nome da empresa', e.endereco, p.id_prod as 'Referência da empresa', p.nome as 'Nome de produto', p.modelo as 'Modelo' 
from empresa e 
inner join produtos p on p.id_prod = e.id_empresa 
order by 1 desc;

select * from produtos;
 select * from empresa;
 
 drop database emporionatural;
 use empresa;
 CREATE TABLE empresa
 (
     ID_empresa integer PRIMARY KEY AUTO_INCREMENT,
     Nome varchar(255),
     Endereco varchar(255)
 );
 
 CREATE TABLE produtos
 (
     ID_prod integer PRIMARY KEY AUTO_INCREMENT,
     Nome varchar(255),
     Modelo varchar(255),
     ID_empresa integer,
     CONSTRAINT fk_empprod FOREIGN KEY (ID_empresa) REFERENCES empresa (ID_empresa)
 );
 
 insert into empresa (nome, endereco) values ('Apple', 'San Francisco');
 select * from empresa;
 insert into produtos (nome, modelo, id_empresa) values ('Iphone', 'XS', 1);
 
 select e.ID_empresa, e.Nome as 'Nome da Empresa', e.Endereco, p.ID_prod as 'Referência da Empresa', p.nome as 'Nome do Produto', p.modelo as 'Modelo' 
  from empresa e
	inner join produtos p on p.id_prod = e.id_empresa
order by e.ID_empresa asc;

insert into empresa (nome, endereco) values ('Samsumg', 'Ney York');
insert into produtos (nome, modelo, id_empresa) values ('Galaxy', 's10', 2);
