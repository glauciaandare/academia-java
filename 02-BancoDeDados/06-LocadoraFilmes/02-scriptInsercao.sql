-- Inserindo dados na tabela CATEGORIA
INSERT INTO CATEGORIA (NOME, VALOR) VALUES
('Drama', 10.00),
('Ação', 15.00),
('Comédia', 12.00),
('Ficção Científica', 18.00),
('Terror', 20.00);

-- Inserindo dados na tabela GENERO
INSERT INTO GENERO (NOME) VALUES
('Drama'),
('Ação'),
('Comédia'),
('Ficção Científica'),
('Terror');

-- Inserindo dados na tabela PROFISSAO
INSERT INTO PROFISSAO (NOME) VALUES
('Professor'),
('Engenheiro'),
('Médico'),
('Advogado'),
('Arquiteto');

-- Inserindo dados na tabela CLIENTE
INSERT INTO CLIENTE (CPF, NOME, TELEFONE, COD_PROF) VALUES
('12345678901', 'João Silva', '11987654321', 1),
('98765432109', 'Maria Oliveira', '21987654321', 2),
('45678901234', 'Pedro Santos', '31987654321', 3),
('67890123456', 'Ana Souza', '41987654321', 4),
('23456789012', 'Paula Lima', '51987654321', 5),
('32165498701', 'Carlos Pereira', '61987654321', 1),
('74185296302', 'Julia Rodrigues', '71987654321', 2),
('85296374103', 'Fernando Costa', '81987654321', 3),
('96385274104', 'Aline Carvalho', '91987654321', 4),
('14725836905', 'Bruno Ferreira', '11987654322', 5);

INSERT INTO ENDERECO (LOGRADOURO, TIPO_LOG, COMPLEMENTO, CIDADE, UF, CEP, NUMERO, BAIRRO) VALUES
('Rua A', 'Residencial', 'Apt 101', 'São Paulo', 'SP', '01001000', '100', 'Centro'),
('Avenida B', 'Comercial', 'Loja 2', 'Rio de Janeiro', 'RJ', '20020000', '200', 'Copacabana'),
('Travessa C', 'Residencial', 'Casa 3', 'Belo Horizonte', 'MG', '30030000', '300', 'Savassi'),
('Rua D', 'Residencial', 'Apt 202', 'Curitiba', 'PR', '40040000', '400', 'Centro'),
('Avenida E', 'Comercial', 'Loja 3', 'Porto Alegre', 'RS', '50050000', '500', 'Centro'),
('Travessa F', 'Residencial', 'Casa 4', 'Salvador', 'BA', '60060000', '600', 'Centro'),
('Rua G', 'Residencial', 'Apt 303', 'Florianópolis', 'SC', '70070000', '700', 'Centro'),
('Avenida H', 'Comercial', 'Loja 4', 'Fortaleza', 'CE', '80080000', '800', 'Centro'),
('Travessa I', 'Residencial', 'Casa 5', 'Brasília', 'DF', '90090000', '900', 'Centro'),
('Rua J', 'Residencial', 'Apt 404', 'Manaus', 'AM', '10010000', '1000', 'Centro');

-- Inserindo dados na tabela CLI_ENDERECO
INSERT INTO CLI_ENDERECO (COD_END, COD_CLI) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserindo dados na tabela FILMES
INSERT INTO FILMES (TITULO_ORIGINAL, TITULO, QUANTIDADE, COD_CAT, COD_GEN) VALUES
('The Shawshank Redemption', 'Um Sonho de Liberdade', 10, 1, 1),
('The Godfather', 'O Poderoso Chefão', 8, 1, 2),
('The Dark Knight', 'O Cavaleiro das Trevas', 15, 2, 3),
('Pulp Fiction', 'Pulp Fiction: Tempo de Violência', 12, 1, 4),
('Inception', 'A Origem', 20, 2, 4),
('The Matrix', 'Matrix', 18, 2, 4),
('The Exorcist', 'O Exorcista', 7, 5, 5),
('Back to the Future', 'De Volta para o Futuro', 14, 4, 4),
('Forrest Gump', 'Forrest Gump: O Contador de Histórias', 11, 1, 1),
('The Silence of the Lambs', 'O Silêncio dos Inocentes', 9, 5, 1),
('Fight Club', 'Clube da Luta', 13, 2, 1),
('Gladiator', 'Gladiador', 17, 1, 2),
('Jurassic Park', 'Parque dos Dinossauros', 16, 4, 4),
('Toy Story', 'Toy Story', 20, 3, 3),
('The Lion King', 'O Rei Leão', 25, 3, 3);

INSERT INTO LOCACAO (DATA_LOC, DESCONTO, MULTA, SUB_TOTAL, COD_CLI) VALUES
('2024-06-01', 0, 0, 30.00, 1),
('2024-06-02', 0, 5.00, 45.00, 2),
('2024-06-03', 5.00, 0, 60.00, 3),
('2024-06-04', 0, 10.00, 75.00, 4),
('2024-06-05', 0, 0, 90.00, 5),
('2024-06-06', 0, 0, 120.00, 6),
('2024-06-07', 0, 5.00, 135.00, 7),
('2024-06-08', 5.00, 0, 150.00, 8),
('2024-06-09', 0, 0, 165.00, 9),
('2024-06-10', 0, 10.00, 180.00, 10),
('2024-06-11', 0, 0, 195.00, 1),
('2024-06-12', 0, 5.00, 210.00, 2),
('2024-06-13', 5.00, 0, 225.00, 3),
('2024-06-14', 0, 10.00, 240.00, 4),
('2024-06-15', 0, 0, 255.00, 5),
('2024-06-16', 0, 0, 270.00, 6),
('2024-06-17', 0, 5.00, 285.00, 7),
('2024-06-18', 5.00, 0, 300.00, 8),
('2024-06-19', 0, 0, 315.00, 9),
('2024-06-20', 0, 10.00, 330.00, 10);

INSERT INTO LOCACAO_FILME (COD_LOC, COD_FILME, NUM_DIAS, DATA_DEVOL) VALUES
(1, 1, 3, '2024-06-04'),
(2, 2, 5, '2024-06-07'),
(3, 3, 7, '2024-06-10'),
(4, 4, 4, '2024-06-08'),
(5, 5, 3, '2024-06-08'),
(6, 6, 5, '2024-06-11'),
(7, 7, 7, '2024-06-14'),
(8, 8, 4, '2024-06-12'),
(9, 9, 3, '2024-06-12'),
(10, 10, 5, '2024-06-15'),
(11, 11, 7, '2024-06-18'),
(12, 12, 4, '2024-06-16'),
(13, 13, 3, '2024-06-16'),
(14, 14, 5, '2024-06-19'),
(15, 15, 7, '2024-06-22'),
(16, 1, 4, '2024-06-20'),
(17, 2, 3, '2024-06-20'),
(18, 3, 5, '2024-06-23'),
(19, 4, 7, '2024-06-26'),
(20, 5, 4, '2024-06-24');


