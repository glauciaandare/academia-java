create table editoras
(
	ID SERIAL PRIMARY KEY,
	NOME VARCHAR(60) NOT NULL
	
)

create table CATEGORIAS
(
	ID SERIAL PRIMARY KEY,
	NOME VARCHAR(60) NOT NULL
	
)

create table AUTORES
(
	ID SERIAL PRIMARY KEY,
	NOME VARCHAR(120) NOT NULL,
	NACIONALIDADE VARCHAR(60)	
)

create table LIVROS
(
	ISBN VARCHAR(22) PRIMARY KEY,
	TITULO VARCHAR(40) NOT NULL,
	ANO_PUBLICACAO INTEGER NOT NULL,
	FK_EDITORA INTEGER,
	FK_CATEGORIA INTEGER,
	FOREIGN KEY (FK_EDITORA) REFERENCES EDITORAS(ID),
	FOREIGN KEY (FK_CATEGORIA) REFERENCES CATEGORIAS(ID)
	
)

create table LIVRO_AUTOR
(
	ID SERIAL PRIMARY KEY,
	FK_LIVRO VARCHAR(22),
	FK_AUTOR INTEGER,
	FOREIGN KEY (FK_LIVRO) REFERENCES LIVROS(ISBN),
	FOREIGN KEY (FK_AUTOR) REFERENCES AUTORES(ID)
	
)

-- DML

--INSERT	
insert into categorias(nome) values ('Horror');
insert into categorias(nome) values ('Ficção Científica');
insert into categorias(nome) values ('Policial');
 
insert into categorias(nome) values (646464);
 
insert into editoras(nome) values ('Rocco'), ('Sextante')
 
insert into autores (nome) values ('Fabrício')
insert into autores (nome, nacionalidade) values ('Cornwell', 'Britânico')
insert into autores (nacionalidade) values ('Brasileiro')
insert into autores (nome, nacionalidade) values ('Cornwell', 
	'Britânicod safash fdsaf adshb fasd bfasdf bsdakf bdsakf basdklfj bsdakf basdk jlfbasd fkjb asdkjf bsdakj fbsadkj fbsadkj b')
insert into livros(isbn, titulo, ano_publicacao, fk_editora, fk_categoria)
values ('4516516515615', 'O Corvo', 1900, 5, 1)
 
insert into livros(isbn, titulo, ano_publicacao, fk_editora, fk_categoria)
values ('561654641', 'Harry Potter', 1920, 5, 4)
 
insert into livro_autor(fk_livro, fk_autor) values ('4516516515615', 1)
 
SELECT
select * from livros
select * from categorias
select * from editoras
select * from autores
select * from livro_autor
 
DELETE
 
delete from editoras
delete from editoras where id = 3
delete from editoras where nome = 'Sextante'
delete from categorias where id = 4
 
UPDATE
 
update editoras set nome = 'Darkside' 
update editoras set nome = 'Rocco' where id = 6
 
update livros set fk_categoria = 1 where titulo = 'Cthulhu'

--SELECT
SELECT * FROM CATEGORIAS 
SELECT * FROM editoras


--DROP
DROP TABLE AUTOR

--Delete
delete from editoras 
delete from editoras where id =3
delete from editoras where nome = 'Sextante'

--update
update editoras set nome = 'Darkside'
update editoras set nome = 'Rocco' where id =6
update categorias set nome = 'Horror' where id =1
update categorias set nome = 'Romance' where id =2

