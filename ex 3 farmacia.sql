create database  db_farmacia_do_bem;
use  db_farmacia_do_bem;

create table tb_categoria (
id_categoria bigint auto_increment, 
tipo varchar(255) not null,
validade date not null,
ativo boolean,
primary key (id_categoria)
);
insert into tb_categoria (tipo, validade, ativo) values ("Génerico", "2021-09-13", true);
insert into tb_categoria (tipo, validade, ativo)  values ("Desodorante", "2023-12-11", true);
insert into tb_categoria (tipo, validade, ativo) values ("Fraldas", "2020-12-31", true);
insert into tb_categoria (tipo, validade, ativo)  values ("Algodão", "2025-03-08", true);
insert into tb_categoria (tipo, validade, ativo) values ("Manipulado", "2021-08-07", true);
select * from tb_categoria;

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(255),
marca varchar(150),
quantidade int,
estoque int,
preco decimal (8,2),
fk_produto bigint,
primary key (id_produto),
foreign key (fk_produto) references tb_categoria(id_categoria)
);

insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Frescor da Lua","Downy", 1, 34, 12.00, 2);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Sonhos Tranquilos","Huggies", 4, 50, 115.00, 3);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Popo Sequinho","Turma da Mônica", 3, 48, 155.75, 3);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Algodão Carinho","Johnsons&Johnsons", 1, 34,4.50, 4);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Aspirina","Generico", 1, 78, 7.60, 1);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Xarope de Pedro Sampaio","Manipulado", 1, 01, 68.00, 5);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Acetato de decematozona de Bruno Mars","Manipulado", 1, 01, 239.00, 5);
insert into tb_produto (nome, marca, quantidade, estoque, preco, fk_produto) values ("Samba Neném","Johnsons&Johnsons", 6, 67, 289.98, 3);
select * from tb_produto;
select * from tb_produto where preco > 50; 
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%B%" order by nome;
-- inner join 
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
-- única categoria
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto where id_categoria= 3 order by nome;
-- pra ficar bonitinho sem os pk e id
select tb_produto.nome, tb_produto.marca, tb_produto.quantidade,tb_produto.estoque, tb_produto.preco, tb_categoria.tipo, tb_categoria.validade 
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
