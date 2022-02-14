create database db_escola;

use db_escola;

create table tb_alunes (
id int auto_increment,
nome varchar (100) not null,
matricula int,
idade int,
serie varchar (100) not null,
media decimal not null,
primary key (id)
);

insert into tb_alunes (nome, matricula, idade, serie, media) values ("Mark Hoppus", 182,18,"3º B", 4.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Thomas Delonge", 281,17,"2º C", 3.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Travis Barker", 128,19,"3º D", 6.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Daniel Jones", 222,17,"2º A", 7.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Christian Bale", 111,16,"1º B", 8.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Jim Carrey", 058,16,"1º D", 7.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Phoebe Buffay", 232,18,"3º A", 3.0);
insert into tb_alunes (nome, matricula, idade, serie, media) values ("Monica Geller", 099,16,"1º C", 10.0);

select nome from tb_alunes where media > 7;
select nome from tb_alunes where media < 7;

update tb_alunes set media = 8.0 where id = 6;

select * from tb_alunes;