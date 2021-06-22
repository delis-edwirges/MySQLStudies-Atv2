create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id_classe bigint(8) auto_increment,
classe varchar(255) not null,
atk bigint(8) not null,
def bigint(8) not null,
ativo boolean not null,
primary key (id_classe)
);
insert into tb_classe (classe, atk, def, ativo) values ("Guerreire", 4000, 3000, true);
insert into tb_classe (classe, atk, def, ativo) values ("Arqueire", 3500, 2500, true);
insert into tb_classe (classe, atk, def, ativo) values ("Feiticeire", 3500, 1500, true);
insert into tb_classe (classe, atk, def, ativo) values ("Curandeire", 1000, 5000, true);
insert into tb_classe (classe, atk, def, ativo) values ("Berserker", 3000, 6000, true);

select * from tb_classe;
create table tb_personagem(
id_per bigint(8) auto_increment,
nome varchar (255) not null,
raca varchar (100) not null,
elemento varchar (100) not null,
arma varchar (150),
idade int,
classe_id bigint,
primary key (id_per),
foreign key(classe_id) references tb_classe (id_classe)
);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Azriel Kliz", "Elfo", "Fogo", "Arco de Prata", 21, 2);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Kira Athanasi", "Humano", "Elétrico", "Espada Furta-Luz", 18, 1);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Alex", "Fada", "Ar","", 15, 4);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Cain", "Vampiro", "Água", "Livro Habemus Magia", 25, 3);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Sybil Beneviento", "Lican", "Terra", "Amplificador de Garras", 27, 5);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Gomom Beardemail", "Anão", "Luz", "Cajado Sagrado", 53, 4);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Mikhaelz Vaz", "Alado", "Escuridão","Arco de ossos", 30, 2);
insert into tb_personagem (nome, raca, elemento, arma, idade, classe_id) values ("Fiora Ragash", "Orc", "Vácuo","Halberd", 32, 1);
select * from tb_personagem;

select tb_personagem.nome, tb_personagem.raca, tb_personagem.elemento, tb_personagem.arma, tb_personagem.idade, tb_classe.classe, tb_classe.atk, tb_classe.def 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id where atk > 2000 order by nome;

select tb_personagem.nome, tb_personagem.raca, tb_personagem.elemento, tb_personagem.arma, tb_personagem.idade, tb_classe.classe, tb_classe.atk, tb_classe.def 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id where def between 100 and 2000;

select tb_personagem.nome, tb_personagem.raca, tb_personagem.elemento, tb_personagem.arma, tb_personagem.idade, tb_classe.classe, tb_classe.atk, tb_classe.def 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id where nome like "%C%";

select tb_personagem.nome, tb_personagem.raca, tb_personagem.elemento, tb_personagem.arma, tb_personagem.idade, tb_classe.classe, tb_classe.atk, tb_classe.def 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id order by nome;

select tb_personagem.nome, tb_personagem.raca, tb_personagem.elemento, tb_personagem.arma, tb_personagem.idade, tb_classe.classe, tb_classe.atk, tb_classe.def 
from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id where id_classe = 2;

select * from tb_personagem inner join tb_classe on tb_classe.id_classe = tb_personagem.classe_id order by nome; -- curtinha