CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (50),
faturamentoOnline decimal,
faturamentoPresencial decimal,
primary key(id)
);

insert into tb_categoria (categoria, faturamentoOnline, faturamentoPresencial) value ("medicamento", 800,1000);
insert into tb_categoria (categoria, faturamentoOnline, faturamentoPresencial) value ("higiene", 600,900);
insert into tb_categoria (categoria, faturamentoOnline, faturamentoPresencial) value ("beleza", 700,800);
insert into tb_categoria (categoria, faturamentoOnline, faturamentoPresencial) value ("alimentício", 500,600);
insert into tb_categoria (categoria, faturamentoOnline, faturamentoPresencial) value ("suplemento", 650,800);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(100) not null,
precoUnid decimal (4,2) not null,
estoque bigint,
dataVal date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("dipirona", 7.00, 150, "2022-10-23",1);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("vitamina c", 9.50, 110, "2023-3-07",5);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("sabonete líquido", 13.00, 180, "2023-07-02",2);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("suco integral", 8.00, 55, "2022-01-15",4);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("benegripe", 4.00, 250, "2023-3-27",1);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("mascara de cílios", 52.00, 35, "2024-02-13",3);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("whey protein", 67.00, 80, "2023-12-19",5);
insert into tb_produto (nome, precoUnid, estoque, dataVal, categoria_id) values ("batom lipstick", 18.00, 44, "2024-05-25",3);

select * from tb_produto;

select * from tb_produto where precoUnid > 50.00;

select * from tb_produto where precoUnid between 03.00 and 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_produto.precoUnid, tb_produto.estoque, tb_produto.dataVal,
tb_categoria.categoria, tb_categoria.faturamentoOnline, tb_categoria.faturamentoPresencial 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria where categoria like "%medicamento%";
