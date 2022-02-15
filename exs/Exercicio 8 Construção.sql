create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
material varchar(50) not null,
faturamentoOnline decimal(8,2),
faturamentoPresencial decimal(8,2),
primary key(id)
);
insert into tb_categoria (material, faturamentoOnline, faturamentoPresencial) value("Construção", 230.00, 250.00);
insert into tb_categoria (material, faturamentoOnline, faturamentoPresencial) value("Segurança" , 330.00, 430.00);
insert into tb_categoria (material, faturamentoOnline, faturamentoPresencial) value("Eletrico", 550.00,230.00);
insert into tb_categoria (material, faturamentoOnline, faturamentoPresencial) value("Ferramenta", 650,130.00 );
insert into tb_categoria (material, faturamentoOnline, faturamentoPresencial) value("Esgoto" ,230.00, 130.00);

select*from tb_categorias;
create table tb_produto(
id bigint auto_increment,
nome varchar(100),
preço decimal (8.2)not null,
estoque bigint,
franquia varchar (50),
catehgoria_id bigint,
primary key (id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("coral salmão", 80.00, 40, "guarulhos",1);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("interruptor + tomada", 7.80, 37, "jabaquara",5);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("caixa de ferramenta", 138.00, 22, "guarulhos",2);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("vassoura", 39.00, 32, "guarulhos",4);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("capacete EPI", 26.90, 42, "jabaquara",3);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("coral azul turquesa", 109.00, 23, "guarulhos",1);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("cabo de energia", 45.00, 33, "guarulhos",5);
insert into tb_produto (nome, preco, estoque, franquia, categoria_id) values ("martelo", 23.80, 18, "jabaquara",2);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 03.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.preco, tb_produto.estoque, tb_produto.franquia,
tb_categoria.material, tb_categoria.faturamentoOnline, tb_categoria.faturamentoPresencial 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria where material like "%eletrico%";


