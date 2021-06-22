create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria (
id_categoria bigint auto_increment, 
tipo varchar(255) not null,
validade date not null,
primary key (id_categoria)
);
insert into tb_categoria (tipo, validade) values ("Doces", "2021-06-30");
insert into tb_categoria (tipo, validade) values ("Semiácidas", "2021-07-07");
insert into tb_categoria (tipo, validade) values ("Ácidas", "2021-07-03");
insert into tb_categoria (tipo, validade) values ("Hiper-hídricas ", "2021-06-27");
insert into tb_categoria (tipo, validade) values ("Oleaginosass", "2021-09-29");

create table tb_produto(
id_produto bigint auto_increment,
nome varchar(255),
fazenda varchar(255),
quantidade int,
preco decimal (8,2),
estoque int,
fk_produto bigint,
primary key (id_produto),
foreign key (fk_produto) references tb_categoria(id_categoria)
);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Melancia","Fazenda Feliz", 1, 15, 10.00, 4);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Abacate","Céu Azul", 6, 32, 18.00, 5);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Framboesa","Familia da Lia", 25, 190, 15.75, 3);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Limão","Rancho do seu Juaz", 12, 67, 6.50, 3);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Maracujá","Plantico do Generico", 18, 48, 43.60, 2);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Banana","Coração de Mãe", 12, 88, 11.00, 1);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Goiaba","Coração de Mãe", 23, 65, 33.75, 2);
insert into tb_produto (nome, fazenda, quantidade, estoque, preco, fk_produto) values ("Kiwi","Familia da Lia", 6, 84, 27.98, 2);
select * from tb_produto;
select * from tb_produto where preco > 50; 
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%C%" order by nome;
-- inner join 
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
-- única categoria
select * from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto where id_categoria= 2 order by nome;
-- pra ficar bonitinho sem os pk e id
select tb_produto.nome, tb_produto.fazenda, tb_produto.quantidade,tb_produto.estoque, tb_produto.preco, tb_categoria.tipo, tb_categoria.validade 
from tb_produto inner join tb_categoria on tb_categoria.id_categoria = tb_produto.fk_produto order by nome;
