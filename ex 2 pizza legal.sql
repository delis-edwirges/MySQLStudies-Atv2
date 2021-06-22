create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id_categoria bigint(8) auto_increment,
tipo varchar (250) not null,
borda varchar (250) not null,
tamanho varchar (100) not null,
ativo boolean not null,
primary key (id_categoria)
);

insert into tb_categoria (tipo, borda, tamanho, ativo) values ("Doce", "Com bordas", "Broto", true);
insert into tb_categoria (tipo, borda, tamanho, ativo) values ("Salgada", "Sem bordas", "Pequeno", true);
insert into tb_categoria (tipo, borda, tamanho, ativo) values ("Vegetariana", "Recheio doce", "Média", true);
insert into tb_categoria (tipo, borda, tamanho, ativo) values ("Sem glúten", "Recheio Salgado", "Grande", true);
insert into tb_categoria (tipo, borda, tamanho, ativo) values ("Veganas", "Crocante", "Extra G", true);
select * from tb_categoria;


select * from tb_categoria;
create table tb_pizza(
id_pizza bigint(8) auto_increment,
nome varchar (255) not null,
igredientes varchar (250) not null,
extra varchar (100) not null,
refrigerante varchar (150),
quantidade int,
fk_pizza bigint,
primary key (id_pizza),
foreign key(fk_pizza) references tb_categoria (id_categoria)
);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Portuguesa", "Presunto. queijo, ovo, azeitona", "Extra Cheese", "Coca-Cola",2,2);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Chocolatta", "Ganache de chocolate, banana caramelizada e canela", "Extra Morango", "Sprite",1,3);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Prestigio", "Ganache de chocolate, kiwis, morangos e beijinho", "Sem Extra", "Fanta Uva",1,1);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Frango com Catupiry", "Frango desfiado, milho, pimentão, queijo prato e catupiry", "Extra Azeitona", "Guaraná",3,4);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Brócolinda", "Brocólis, queijo vegano, abobrinha, tomates e azeitona preta", "Extra Milho", "Fanta Laranja",1,5);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Calabresa", "Calabresa, queijo prato, queijo cremoso, tomate", "Sem Extra", "Itubaina",4,2);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("Chantilicia", "Doce de leite ninho, uvas, morangos, creme de chantilly", "Extra Chocolate", "Mate-Cola",1,1);
insert into tb_pizza (nome, igredientes, extra,refrigerante, quantidade, fk_pizza) values ("4 queijos", "Queijo prato, queijo cremoso, cheddar, queijo minas, catupiry", "Extra Milho", "Coca-Cola Diet",1,4);
select * from tb_pizza;
alter table tb_pizza add preco decimal(8,2);
update tb_pizza set preco = 18.70 where id_pizza = 1;
update tb_pizza set preco = 47.40 where id_pizza = 2;
update tb_pizza set preco = 28.00 where id_pizza = 3;
update tb_pizza set preco = 117.90 where id_pizza = 4;
update tb_pizza set preco = 62.00 where id_pizza = 5;
update tb_pizza set preco = 72.70 where id_pizza = 6;
update tb_pizza set preco = 35.70 where id_pizza = 7;
update tb_pizza set preco = 45.00 where id_pizza = 8;

select * from tb_pizza where preco > 45; 
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%C%" order by nome;

select * from tb_pizza inner join tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_pizza order by nome;
select * from tb_pizza inner join tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_pizza where id_categoria= 1;

