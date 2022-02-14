CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(100) not null,
quantidade int not null,
preco decimal (6,2) not null,
tamanho varchar(100),
cor varchar(30) not null,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("camiseta game of thrones",50,99.99,"M","preto");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("boneco dragon",15,700.00,"1 metro","cinza");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("poltrona trono de ferro",5,1000.00,"G","cinza");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("boneca arya stark",20,300.00,"10cm","colorido");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("caneca winter is coming",100,59.99,"-","branco");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("espada jon snow",5,800.00,"1m","prateado");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("peruca daenerys",3,450.00,"45cm","loiro");
insert into tb_produtos (nome, quantidade, preco, tamanho, cor) values ("box special edition livros GOT",15,350.00,"-","colorido");

select nome from tb_produtos where preco > 500;
select nome from tb_produtos where preco < 500;

update tb_produtos set preco = 250.00 where id = 4;

select * from tb_produtos

