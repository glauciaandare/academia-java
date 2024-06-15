
create table alunos

(
	id serial primary key,

	nome varchar(100) not null 

)

select * from alunos

create table professores

(
	id serial primary key,

	nome varchar(100) not null 

)

select * from professores


create table cursos
(
	id serial primary key,
	nome varchar(60) not null,
	fk_coord INTEGER NOT NULL,
	foreign key (fk_coord) 
		references professores(id)
)
select * from cursos

create table matriculas
(
	id serial primary key,
	fk_aluno INTEGER NOT NULL,
	fk_curso INTEGER NOT NULL,
	foreign key (fk_aluno) 
		references Alunos(id),
	foreign key (fk_curso) 
		references Cursos(id)
)
select * from matriculas

create database biblioteca
