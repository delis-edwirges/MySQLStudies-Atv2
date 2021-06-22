create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria (
id_categoria bigint auto_increment, 
tipo varchar(255) not null,
estoque bigint,
primary key (id_categoria)
);
insert into tb_categoria (tipo, estoque) values ("Cimentos", 1432);
insert into tb_categoria (tipo, estoque) values ("Armários", 233);
insert into tb_categoria (tipo, estoque) values ("Pisos", 2345);
insert into tb_categoria (tipo, estoque) values ("Pintura", 3284);
insert into tb_categoria (tipo, estoque) values ("Hidraúlica", 2394);
select * from tb_categoria;

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(255) not null,
marca varchar(255),
quantidade int not null,
preco decimal (8,2) not null,
cor varchar(255),
fk_produto bigint,
primary key (id_produto),
foreign key (fk_produto) references tb_categoria(id_categoria)
);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Firmeza","Cimentão", 1, 15.00,"", 1);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Gabinete Cozinha","Itatiaia", 2, 1938.00, "Marrom e Bege", 2);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Cerâmica","Duralex", 5540, 11055.75, "Floral", 3);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Pincel detalhes","Tiegre", 1, 2.50, "Vermelho",4);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Pincel Grosso","Tiegre", 2, 17.60, "Azul", 4);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Tinta para Parede","Coral", 5, 268.00, "Verde-Óleo", 4);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Cano de PVC","Tiegre", 3, 25.00, "Marrom", 5);
insert into tb_produto (nome, marca, quantidade, preco, cor, fk_produto) values ("Tinta Fosca","Suvinil", 8, 432.90, "Preto", 4);
select * from tb_produto;
select * from tb_produto where preco > 50; 
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%" order by nome;
-- inner join 
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
-- única categoria
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto where id_categoria= 4 order by nome;
-- pra ficar bonitinho sem os pk e id
select tb_produto.nome, tb_produto.marca, tb_produto.quantidade,tb_produto.cor, tb_produto.preco, tb_categoria.tipo, tb_categoria.estoque 
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
