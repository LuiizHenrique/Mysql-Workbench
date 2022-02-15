create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(100) not null,
totalAlunos bigint,
professor varchar(100),
primary key (id)
);

insert into tb_categoria (categoria, totalAlunos, professor) values ("Tecnologia", 558,"Tony Stark");
insert into tb_categoria (categoria, totalAlunos, professor) values ("Saúde e bem estar", 333,"Chiyo");
insert into tb_categoria (categoria, totalAlunos, professor) values ("Auto-conhecimento", 222,"David Goggins");
insert into tb_categoria (categoria, totalAlunos, professor) values ("Arte e pinturas", 487,"Michael Scofield");
insert into tb_categoria (categoria, totalAlunos, professor) values ("Desenvolvimento Pessoal", 453,"Fernanda Bloquinho");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal (8,2) not null,
avaliacao decimal(4,2),
idioma varchar(50),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("MySQL", 388.00, 9.9, "Inglês e Português",1);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Comportamento, Mentalidades & Habilidades", 488.00, 9.9, "Inglês e Português",5);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Yoga & Meditação", 350.00, 8.9, "Inglês, Português e Espanhol",2);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Liberdade em Arte", 650.00, 10.0, "Português e Espanhol",4);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Cura Energética", 777.00, 9.2, "Português",3);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Java", 255.00, 9.7, "Inglês e Português",1);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Cura através das cores e dos alimentos", 555.00, 9.5, "Português",3);
insert into tb_produto (nome, preco, avaliacao, idioma, categoria_id) values ("Como Ser uma Pessoa de Sucesso", 780.00, 9.8, "Inglês e Português",5);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 100.00 and 400.00;

select * from tb_produto where nome like "J%";

select tb_produto.nome, tb_produto.preco, tb_produto.avaliacao, tb_produto.idioma,
tb_categoria.categoria, tb_categoria.totalAlunos, tb_categoria.professor 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_categoria where categoria like "%tecnologia%";
