#create database cocozinho; 
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
