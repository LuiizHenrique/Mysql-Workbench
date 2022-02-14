create database jogo_online;

use  jogo_online;
create table tb_classes(
id bigint auto_increment,
tipoDePersonagem varchar(255) not null,
habilidade varchar(255) not null,
vantagem varchar(255)not null,
primary key (id)
);

insert into tb_classes(tipoDePersonagem, habilidade, vantagem) values ("Fada", "MagiaTerreste", "CuraInterior");
insert into tb_classes(tipoDePersonagem, habilidade, vantagem) values("Elfo", "Encanto", "Localizador");
insert into tb_classes(tipoDePersonagem, habilidade, vantagem) values("Witch", "PoçãoMaligna", "GatoMestre");
insert into tb_classes(tipoDePersonagem, habilidade, vantagem) values("Mago", "Bastão", "AutoImune");
insert into tb_classes(tipoDePersonagem, habilidade, vantagem) values("Lobo", "Dash", "Rapido");

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
item varchar(255) not null,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Lilith", "Asas Flamejantes", 1700 , 2000, 2);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Eldeth", "Canção Maldita", 1500 , 1900 , 1);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Lisa" , "Pote Doce" , 2100 , 2700 ,5);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Vordemolt" , "Cajado Mistico" ,2000, 2900 , 4);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Frank", "Pulo Mortal" , 2800, 3000, 3);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Cerberus", "Presas", 1000 , 1500 , 3);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Sereia", "Calda" , 2200, 2900, 2);
insert into tb_personagens (nome, item, ataque, defesa, classe_id) values("Dumbledore", "Reliquias Da Morte", 2900, 3700, 4);

select * from tb_personagens;

select * from tb_classes ;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2900;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes
on tb_classes.id= tb_personagens.classe_id
where tb_classes.id = 4;