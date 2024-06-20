INSERT INTO genero (nome)
VALUES
    ('Romance', ),
    ('Animação'),
    ('Comédia'),
    ('Aventura'),
    ('Crime'),
    ('Ficção Científica'),
    ('Fantasia'),
    ('Ação'),
    ('Drama'),
    ('Suspense');

SELECT * FROM genero

    INSERT INTO ator (nome)
VALUES
    ('Leonardo DiCaprio'),
    ('Kate Winslet'),
    ('Billy Zane'),
    ('Cate Blanchett'),
    ('Richard Madden'),
    ('Helena Bonham Carter'),
    ('Mike Myers'),
    ('Eddie Murphy'),
    ('Cameron Diaz'),
    ('Tom Hanks'),
    ('Keanu Reeves'),
    ('Carrie-Anne Moss'),
    ('Daniel Radcliffe'),
    ('Emma Watson'),
    ('Rupert Grint');

SELECT * FROM ator

    INSERT INTO categoria (nome, valor)
VALUES
    ('Romance', 10.00),
    ('Animação', 22.70),
    ('Comédia', 8.00),
    ('Aventura', 13.00),
    ('Crime', 8.60),
    ('Ficção Científica', 34.10),
    ('Fantasia', 10.00),
    ('Ação', 19.00),
    ('Drama', 33.00),
    ('Suspense', 12.00);

SELECT * FROM categoria

    INSERT INTO filmes (titulo_original, titulo, quantidade, fk_cod_cat, fk_cod_gen)
VALUES
    ('Titanic', 'Titanic', '10', 1, 8),
    ('Cinderela', 'Cinderela', '8', 1, 7),
    ('Shrek', 'Shrek', '12', 1, 2),
    ('A Fantástica Fábrica de Chocolate', 'A Fantástica Fábrica de Chocolate', '5', 4, 8),
    ('Pulp Fiction', 'Pulp Fiction', '7', 5, 10),
    ('Matrix', 'Matrix', '9', 6, 9),
    ('Harry Potter e a Pedra Filosofal', 'Harry Potter e a Pedra Filosofal', '11', 7, 8),
    ('O Senhor dos Anéis: A Sociedade do Anel', 'O Senhor dos Anéis: A Sociedade do Anel', '6', 8, 4),
    ('Forrest Gump', 'Forrest Gump', '8', 9, 8),
    ('Interestelar', 'Interestelar', '10', 10, 6),
    ('Toy Story', 'Toy Story', '6', 1, 2),
    ('Jurassic Park', 'Jurassic Park', '7', 1, 4),
    ('O Rei Leão', 'O Rei Leão', '9', 1, 1),
    ('Os Vingadores', 'Os Vingadores', '12', 1, 9),
    ('De Volta para o Futuro', 'De Volta para o Futuro', '8', 1, 6);

SELECT * FROM filmes

    INSERT INTO profissao (nome)
VALUES
    ('Engenheiro'),
    ('Advogado'),
    ('Professor'),
    ('Médico');

SELECT * FROM profissao

    INSERT INTO cliente (cpf, nome, telefone, fk_cod_prof)
VALUES
    ('98765432100', 'Maria Souza', '1197654321', 2),
    ('12345678900', 'João da Silva', '1198765432', 1),
    ('56789012300', 'Pedro Santos', '1196543217', 3),
    ('34567890100', 'Ana Oliveira', '1195432176', 1),
    ('90123456700', 'Carlos Martins', '1194321765', 2),
    ('23456789000', 'Juliana Costa', '1193217654', 3),
    ('67890123400', 'Marcos Lima', '1192176543', 1),
    ('45678901200', 'Luiza Pereira', '1191765432', 2),
    ('89012345600', 'Fernanda Rodrigues', '1197654321', 3),
    ('01234567800', 'Rafaela Almeida', '1196543217', 1);

SELECT * FROM cliente

    INSERT INTO locacao (data_loc, desconto, multa, sub_total, fk_cod_cliente)
VALUES
    ('2024-06-01', 0, 0, 50.00, 1),
    ('2024-06-03', 5.00, 0, 45.00, 2),
    ('2024-06-05', 0, 3.50, 55.00, 3),
    ('2024-06-07', 0, 0, 60.00, 4),
    ('2024-06-10', 0, 0, 40.00, 5),
    ('2024-06-12', 2.00, 0, 48.00, 6),
    ('2024-06-14', 0, 0, 70.00, 7),
    ('2024-06-17', 0, 0, 35.00, 8),
    ('2024-06-19', 0, 0, 42.00, 9),
    ('2024-06-21', 0, 0, 65.00, 1),
    ('2024-06-24', 0, 0, 38.00, 2),
    ('2024-06-26', 1.50, 0, 47.00, 3),
    ('2024-06-28', 0, 0, 58.00, 4),
    ('2024-07-01', 0, 4.00, 52.00, 5),
    ('2024-07-03', 0, 0, 44.00, 6),
    ('2024-07-05', 3.00, 0, 57.00, 7),
    ('2024-07-08', 0, 0, 62.00, 8),
    ('2024-07-10', 0, 0, 36.00, 9),
    ('2024-07-12', 0, 0, 49.00, 1),
    ('2024-07-14', 0, 0, 68.00, 2);

SELECT * FROM locacao

    INSERT INTO dependente (cod_dep, fk_cod_cliente, parentesco)
VALUES
    (1, 1, 'Filho'),
    (2, 1, 'Filha'),
    (3, 3, 'Esposa'),
    (4, 5, 'Filho'),
    (5, 6, 'Filha'),
    (6, 7, 'Esposo'),
    (7, 8, 'Filho'),
    (8, 9, 'Filho'),
    (9, 10, 'Esposa'),
    (10, 10, 'Filho');

SELECT * FROM dependente

    INSERT INTO locacao_filme (fk_cod_loc, fk_cod_filme, valor, num_dias, data_devol)
VALUES
    (21, 76, 10.00, 3, '2024-06-04'),
    (22, 77, 8.00, 2, '2024-06-03'),
    (23, 78, 12.00, 4, '2024-06-07'),
    (24, 79, 5.00, 1, '2024-06-04'),
    (25, 80, 7.00, 3, '2024-06-08'),
    (26, 81, 9.00, 2, '2024-06-06'),
    (27, 82, 11.00, 5, '2024-06-12'),
    (28, 83, 6.00, 2, '2024-06-09'),
    (29, 84, 8.00, 3, '2024-06-13'),
    (30, 85, 10.00, 1, '2024-06-11'),
    (31, 86, 6.00, 2, '2024-06-14'),
    (32, 87, 7.00, 4, '2024-06-18'),
    (33, 88, 9.00, 3, '2024-06-17'),
    (34, 89, 12.00, 5, '2024-06-22'),
    (35, 90, 5.00, 2, '2024-06-19'),
    (36, 76, 8.00, 3, '2024-06-23'),
    (37, 77, 7.00, 4, '2024-06-26'),
    (38, 78, 10.00, 2, '2024-06-25'),
    (39, 79, 6.00, 3, '2024-06-28'),
    (40, 80, 9.00, 1, '2024-06-27'),
    (22, 81, 12.00, 4, '2024-07-01'),
    (23, 82, 5.00, 2, '2024-06-29'),
    (25, 83, 7.00, 3, '2024-07-03'),
    (32, 84, 8.00, 2, '2024-07-02'),
    (23, 85, 10.00, 4, '2024-07-06'),
    (23, 86, 6.00, 1, '2024-07-04'),
    (34, 87, 9.00, 4, '2024-07-01'),
    (35, 88, 10.00, 2, '2024-07-10'),
    (24, 89, 12.00, 3, '2024-07-15'),
    (25, 90, 5.00, 1, '2024-07-12');

SELECT * FROM locacao_filme

    INSERT INTO filme_ator (fk_cod_ator, fk_cod_filme, ator, diretor)
VALUES
    (1, 76, 'S', 'N'),
    (2, 76, 'N', 'N'),
    (3, 76, 'N', 'N'),
    (4, 77, 'S', 'N'),
    (5, 77, 'N', 'N'),
    (6, 77, 'N', 'N'),
    (7, 78, 'S', 'N'),
    (8, 78, 'N', 'N'),
    (9, 78, 'N', 'N'),
    (10, 79, 'S', 'N'),
    (11, 80, 'S', 'N'),
    (12, 81, 'S', 'N'),
    (13, 82, 'S', 'N'),
    (14, 83, 'S', 'N'),
    (15, 84, 'S', 'N');

SELECT * FROM filme_ator

    INSERT INTO endereco (cod_end, logradouro, tipo_log, complemento, cidade, uf, cep, numero, bairro)
VALUES
    (1, 'Rua dos Bobos', 'Rua', 'Apto 101', 'São Paulo', 'SP', '01001000', '100', 'Centro'),
    (2, 'Av. Paulista', 'Avenida', 'Sala 302', 'São Paulo', 'SP', '01310000', '500', 'Bela Vista'),
    (3, 'Rua da Alegria', 'Rua', 'Casa 10', 'Rio de Janeiro', 'RJ', '20000000', '200', 'Copacabana'),
    (4, 'Av. Atlântica', 'Avenida', 'Bloco A', 'Rio de Janeiro', 'RJ', '22000000', '1000', 'Ipanema'),
    (5, 'Rua das Flores', 'Rua', 'Casa 5', 'Belo Horizonte', 'MG', '30100000', '50', 'Centro');

SELECT * FROM endereco

    INSERT INTO cli_endereco (fk_cod_end, fk_cod_cliente)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (1, 6),
    (2, 7),
    (3, 8),
    (4, 9),
    (5, 10);

SELECT * FROM cli_endereco