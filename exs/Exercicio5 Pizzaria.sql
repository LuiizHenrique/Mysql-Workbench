create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (20),
borda varchar (30),
tamanho varchar (10),
primary key(id)
);

insert into tb_categoria (tipo,borda,tamanho) value ("salgada","recheada","8 fatias");
insert into tb_categoria (tipo,borda,tamanho) value ("doce","recheada","8 fatias");
insert into tb_categoria (tipo,borda,tamanho) value ("salgada","sem recheio","12 fatias");
insert into tb_categoria (tipo,borda,tamanho) value ("doce","sem recheio","12 fatias");
insert into tb_categoria (tipo,borda,tamanho) value ("especial","recheada","12 fatias");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal (8,2) not null,
quantidade bigint,
valorCalorico_fatia varchar(10),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Atum", 46.00, 1,"205Kcal",1);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Bacon", 52.00, 1,"463Kcal",3);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Brigadeiro", 32.00, 1,"276Kcal",2);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Camarão", 65.00, 1,"230Kcal",5);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Morango com Chocolate", 38.00, 1,"333Kcal",4);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Carne Seca", 62.00, 1,"267Kcal",5);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Mussarela", 28.00, 1,"360Kcal",1);
insert into tb_pizza (nome, preco, quantidade, valorCalorico_fatia, categoria_id) values ("Moda da Casa", 35.00, 1,"289Kcal",3);

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where nome like "c%";

select tb_pizza.nome, tb_pizza.preco, tb_pizza.quantidade, tb_pizza.valorCalorico_fatia,
tb_categoria.tipo, tb_categoria.borda, tb_categoria.tamanho 
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_categoria where tipo like "%doce%";


