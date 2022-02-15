create database db_cidade_da_carnes;

use db_cidade_da_carnes;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(50) not null,
sabor varchar (35),
serieCarne int,
primary key(id)
);

insert into tb_categoria (tipo, sabor,numeroBarraca) values ("Bovina","carne de vermelha" ,01);
insert into tb_categoria (tipo, sabor,numeroBarraca) values ("Ovino e Suina" , "Carne de Branca" , 02);
insert into tb_categoria (tipo, sabor,numeroBarraca) values ("Aves" ,"Criadas em Cativeiro" ,03);
insert into tb_categoria (tipo, sabor,numeroBarraca) values ("Peixes" ," Peixe de Agua Doce", 04 );
insert into tb_categoria (tipo, sabor,numeroBarraca) values ("Frutos do mar", "Variados de agua doce e salgada" , 05);

select * from tb_categoria;
create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
precoKg decimal (6,2) not null,
estoque varchar (15),
dataRecebimento date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values ("Coxão Mole", 22.50 , "35.800" , 2022-02-15 ,01);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Picanha", 38.90 , "23.900", 2022-02-15 , 01);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Pato", 75.90 ,  "2.110" , 2022-02-17, 03);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Salmão" ,90, "23.900", 2022-02-15 , 04);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Camarão" , 55, "2.500", 2022-02-13, 05);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Pernil",17.90 ,"18.470", 02 );
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Carneiro" , 11.90 , "2,900", 02);
insert into tb_produto (nome, precoKg, estoque, dataRecebimento, categoria_id) values("Vongole" , 23.70 , "1,900",  05);

select* from produto;
Select* from tb_produto where precoKg > 100;
select * from tb_produto where precoKg_unid between 2.99 AND 101;
select * from tb_produto where nome like "%c%" ;
select * from tb_produto where precoKg_unid;

select tb_produto.nome, tb_produto.precoKg, tb_produto.estoque, tb_produto.dataRecebimento,
tb_categoria.tipo, tb_categoria.sabor, tb_categoria.serieCarne
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria where tipo like "%aves%";
