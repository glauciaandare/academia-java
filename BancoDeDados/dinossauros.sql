create database dinossauros;

create table regioes
(
	id serial primary key,
	nome varchar(70) not null
)

create table grupos
(
	id serial primary key,
	nome varchar(30) not null
)

create table eras
(
	id serial primary key,
	nome varchar(30) not null
)

create table descobridores
(
	id serial primary key,
	nome varchar(80) not null
)

create table dinossauros
(
	id serial primary key,
	nome varchar(70) not null,
	toneladas integer not null,
	ano_descoberta integer not null,
	fk_grupo integer,
	fk_descobridor integer,
	fk_era integer,
	inicio integer,
	fim integer,
	fk_regiao integer,
	foreign key (fk_grupo) references grupos(id),
	foreign key (fk_descobridor) references descobridores(id),
	foreign key (fk_era) references eras(id),
	foreign key (fk_regiao) references regioes(id)
)

select * from grupos;	

insert into grupos(nome) values ('Anquilossauros');
insert into grupos(nome) values ('Ceratopsideos');
insert into grupos(nome) values ('Estegossauros');
insert into grupos(nome) values ('Terapodes');

select * from eras;

insert into eras(nome) values ('Cretaceo');
insert into eras(nome) values ('Jurassico');

SELECT * FROM descobridores

INSERT INTO descobridores(nome) VALUES ('Maryanska');
INSERT INTO descobridores(nome) VALUES ('John Bell Hatcher');
INSERT INTO descobridores(nome) VALUES ('Cientistas Alemães');
INSERT INTO descobridores(nome) VALUES ('Museu Americano de História Natural');
INSERT INTO descobridores(nome) VALUES ('Othoniel Charles Marsh');
INSERT INTO descobridores(nome) VALUES ('Barnum Brown')

SELECT * FROM regioes	

INSERT INTO regioes(nome) VALUES ('Mongólia');
INSERT INTO regioes(nome) VALUES ('Canadá');
INSERT INTO regioes(nome) VALUES ('Tanzânia');
INSERT INTO regioes(nome) VALUES ('China');
INSERT INTO regioes(nome) VALUES ('America do Norte');
INSERT INTO regioes(nome) VALUES ('Estados Unidos')

SELECT * FROM dinossauros
 
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Saichania',4,1977,1,1,1,1,145,66);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Tricerátops',6,1887,2,2,1,2,70,66);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Kentrossauro',2,1909,3,3,2,3,201,145);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Pinacossauro',6,1909,1,4,1,4,85,75);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Alossauro',3,1877,4,5,2,5,155,150);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Torossauro',8,1891,2,2,1,6,67,65);
INSERT INTO dinossauros(nome,toneladas,ano_descoberta,fk_grupo,fk_descobridor,fk_era,fk_regiao,inicio,fim) VALUES ('Anquilossauro',8,1906,1,6,1,5,66,63)
 
SELECT * FROM dinossauros

SELECT NOME FROM DINOSSAUROS

SELECT NOME, TONELADAS FROM DINOSSAUROS
ORDER BY NOME

SELECT * FROM dinossauros, GRUPOS
WHERE DINOSSAUROS.FK_GRUPO = GRUPOS.ID

SELECT DINOSSAUROS.NOME, GRUPOS.NOME FROM dinossauros, GRUPOS
WHERE DINOSSAUROS.FK_GRUPO = GRUPOS.ID

--inicio do modo didático---

SELECT * FROM dinossauros
WHERE TONELADAS > 4

SELECT * FROM dinossauros
WHERE ano_descoberta = 1887

SELECT * FROM dinossauros
WHERE ano_descoberta = 1909 and toneladas > 4

SELECT * FROM DINOSSAUROS, grupos, descobridores, eras, regioes
	where dinossauros.fk_grupo = grupos.id and dinossauros.fk_descobridor = descobridores.id
	and dinossauros.fk_era = eras.id and dinossauros.fk_regiao = regioes.id
	ORDER BY dinossauros.nome

select dinossauros.id, dinossauros.nome, dinossauros.toneladas, dinossauros.ano_descoberta,
	grupos.nome, descobridores.nome, eras.nome, dinossauros.inicio, dinossauros.fim, regioes.nome
from dinossauros, grupos, descobridores, eras, regioes
where dinossauros.fk_grupo = grupos.id and dinossauros.fk_descobridor = descobridores.id
	and dinossauros.fk_era = eras.id and dinossauros.fk_regiao = regioes.id
order by dinossauros.nome

select dinossauros.id, dinossauros.nome, dinossauros.toneladas, dinossauros.ano_descoberta,
	grupos.nome as Grupo, descobridores.nome as Descobridor, eras.nome as Era, dinossauros.inicio, dinossauros.fim, regioes.nome as Região
from dinossauros, grupos, descobridores, eras, regioes
where dinossauros.fk_grupo = grupos.id and dinossauros.fk_descobridor = descobridores.id
	and dinossauros.fk_era = eras.id and dinossauros.fk_regiao = regioes.id
order by dinossauros.nome

--COM INNER JOIN
	
SELECT 
    dinossauros.id, 
    dinossauros.nome, 
    dinossauros.toneladas, 
    dinossauros.ano_descoberta,
    grupos.nome AS Grupo, 
    descobridores.nome AS Descobridor, 
    eras.nome AS Era, 
    dinossauros.inicio, 
    dinossauros.fim, 
    regioes.nome AS Região
FROM dinossauros
JOIN grupos ON dinossauros.fk_grupo = grupos.id
JOIN descobridores ON dinossauros.fk_descobridor = descobridores.id
JOIN eras ON dinossauros.fk_era = eras.id
JOIN regioes ON dinossauros.fk_regiao = regioes.id
ORDER BY dinossauros.nome;

--------fim do modo didático-----

create database joins

---exemplo com join------
select * from dinossauros, grupos
where dinossauros.fk_grupo = grupos.id
 
select * from dinossauros
inner join grupos
	on dinossauros.fk_grupo = grupos.id

-----fim exemplo-----



