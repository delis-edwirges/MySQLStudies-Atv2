create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria (
id_categoria bigint auto_increment, 
tipo varchar(255) not null,
vagas int,
primary key (id_categoria)
);
insert into tb_categoria (tipo, vagas) values ("Linguistica Brasileira", 100);
insert into tb_categoria (tipo, vagas) values ("Inglês", 506);
insert into tb_categoria (tipo, vagas) values ("Matemática", 233);
insert into tb_categoria (tipo, vagas) values ("Francês", 409);
insert into tb_categoria (tipo, vagas) values ("Programação", 190);
select * from tb_categoria;

create table tb_curso(
id_curso bigint auto_increment,
nome varchar(255) not null,
idade int,
modalidade varchar(255) not null,
periodo varchar(155) not null,
preco decimal (8,2) not null,
fk_curso bigint,
primary key (id_curso),
foreign key (fk_curso) references tb_categoria(id_categoria)
);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Joao Matias Silva", 21, "Como Falar Bem", "3 semanas", 25.00, 1);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Genevive Miranda Casov", 27, "Programação Java I", "3 meses", 250.00, 5);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Rubens Luiz Mirella", 32, "Speaking in and out!", "1 ano", 2334.00, 2);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Janete Bragança", 51, "Ça va bien? I", "8 meses", 687.40, 4);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Edmundo Macedo Pinheiro", 38, "Matematica aplicada III", "2 anos", 4554.00, 3);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Juliano Basse Rando", 22, "MySQL - Começando", "4 semanas", 34.00, 5);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Marina Marta Mendonça", 19, "Fundamentos UX", "6 meses", 675.00, 5);
insert into tb_curso (nome, idade, modalidade, periodo, preco, fk_curso) values ("Alexander Matias Silva", 29, "Springboot: do começo ao fim", "8 meses", 785.00, 5);
select * from tb_curso;
select * from tb_curso where preco > 50; 
select * from tb_curso where preco between 3 and 60;
select * from tb_curso where modalidade like "%J%" order by nome;
-- inner join 
select * from tb_curso inner join tb_categoria on tb_categoria.id_categoria = tb_curso.fk_curso;
-- única categoria
select * from tb_curso inner join tb_categoria on tb_categoria.id_categoria = tb_curso.fk_curso where id_categoria= 5 order by nome;
-- pra ficar bonitinho sem os pk e id
select tb_curso.nome, tb_curso.idade, tb_curso.modalidade, tb_curso.periodo, tb_curso.preco, tb_categoria.tipo, tb_categoria.vagas 
from tb_curso inner join tb_categoria on tb_categoria.id_categoria = tb_curso.fk_curso order by nome;