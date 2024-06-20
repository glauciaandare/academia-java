CREATE TABLE pessoas (
    cpf serial PRIMARY KEY,
    nome varchar(100) NOT NULL,
    email varchar(40) NOT NULL,
    fone varchar(20) NOT NULL
);

select * from pessoas;

CREATE TABLE tipo_evento (
    id serial PRIMARY KEY,
    tipo varchar(200) NOT NULL    
);

select * from tipo_evento;

CREATE TABLE EVENTOS (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_ini DATE NOT NULL,
    data_fim DATE NOT NULL,
    localizacao VARCHAR(255) NOT NULL,
    fk_tipo INTEGER NOT NULL,
    FOREIGN KEY (fk_tipo) REFERENCES TIPO_EVENTO(id)
);

CREATE TABLE INGRESSOS (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    lugar VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    quantidade INTEGER NOT NULL,
    fk_evento INTEGER NOT NULL,
    FOREIGN KEY (fk_evento) REFERENCES EVENTOS(id)
);

CREATE TABLE COMPRA (
    id SERIAL PRIMARY KEY,
    fk_pessoa CHAR(11) NOT NULL,
    fk_ingresso INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (fk_ingresso) REFERENCES INGRESSOS(id)
);

CREATE TABLE PROGRAMACAO (
    id SERIAL PRIMARY KEY,
    fk_evento INTEGER NOT NULL,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    data_ini TIMESTAMP NOT NULL,
    data_fim TIMESTAMP NOT NULL,
    lugar VARCHAR(255) NOT NULL,
    responsavel VARCHAR(255) NOT NULL,
    FOREIGN KEY (fk_evento) REFERENCES EVENTOS(id)
);



SELECT * FROM TIPO_EVENTO







