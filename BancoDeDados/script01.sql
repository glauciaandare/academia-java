SQL

--Comentários no SQL
--DDL -> Data Definition Language

CREATE DATABASE aula

DROP DATABASE aula; 

CREATE TABLE cursos
(
	id integer,
	nome varchar(50),
	ch integer
)

create table pessoas
(
	CPF varchar(11) primary key,
	RG varchar(10) unique,
)

ALTER

ALTER TABLE cursos
add column coordenador varchar(120)

ALTER TABLE cursos
drop column coordenador

alter table cursos
alter column coordenador type varchar(100)

alter table cursos
rename column coordenador to coord

SELECT * FROM cursos

--DML -> Data Manipulation Language

select * from cursos

create database matriculas

