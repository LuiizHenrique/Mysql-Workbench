create database db_rh;

use db_rh;

create table tb_funcionarios(
id int auto_increment,
nome varchar(100) not null,
idade int,
matricula int not null,
funcao varchar (100) not null,
salario decimal (8,2) not null,
primary key (id)
);

insert into tb_funcionarios (nome, idade, matricula, funcao, salario) values ("Marcio", 39, 1056, "Chefe de Cozinha", 4000.00);
insert into tb_funcionarios (nome, idade, matricula, funcao, salario) values ("Nea", 56, 1023, "Cozinheira", 2500.00);
insert into tb_funcionarios (nome, idade, matricula, funcao, salario) values ("Dwight", 34, 1074, "Confeiteiro", 1900.00);
insert into tb_funcionarios (nome, idade, matricula, funcao, salario) values ("Fernando", 28, 1087, "Garçom", 1800.00);
insert into tb_funcionarios (nome, idade, matricula, funcao, salario) values ("Elodie", 32, 1067, "Maitre", 2700.00);

select nome from tb_funcionarios where salario > 2000.00;
select nome from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set idade = 40 where id = 1;

select * from tb_funcionarios