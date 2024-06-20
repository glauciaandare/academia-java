-- Inserindo dados na tabela PROFISSAO
INSERT INTO PROFISSAO (NOME) VALUES ('Engenheiro'), ('Médico'), ('Advogado'), ('Professor'), ('Arquiteto');

-- Inserindo dados na tabela CLIENTE
INSERT INTO CLIENTE (CPF, NOME, TELEFONE, COD_PROF) VALUES 
('12345678901', 'João Silva', '111111111', 1),
('23456789012', 'Maria Oliveira', '222222222', 2),
('34567890123', 'Carlos Pereira', '333333333', 3),
('45678901234', 'Ana Costa', '444444444', 4),
('56789012345', 'Pedro Almeida', '555555555', 5),
('67890123456', 'Lucas Santos', '666666666', 1),
('78901234567', 'Juliana Ramos', '777777777', 2),
('89012345678', 'Roberto Lima', '888888888', 3),
('90123456789', 'Fernanda Souza', '999999999', 4),
('01234567890', 'Bruno Oliveira', '101010101', 5);

-- Inserindo dados na tabela ENDERECO
INSERT INTO ENDERECO (LOGRADOURO, TIPO_LOG, COMPLEMENTO, CIDADE, UF, CEP, NUMERO, BAIRRO) VALUES 
('Rua A', 'Rua', 'Apt 101', 'Cidade A', 'S', '12345678', '10', 'Centro'),
('Rua B', 'Avenida', 'Casa', 'Cidade B', 'S', '23456789', '20', 'Bairro B'),
('Rua C', 'Travessa', 'Bloco 3', 'Cidade C', 'S', '34567890', '30', 'Bairro C'),
('Rua D', 'Rua', 'Apt 202', 'Cidade D', 'S', '45678901', '40', 'Centro'),
('Rua E', 'Avenida', 'Casa', 'Cidade E', 'S', '56789012', '50', 'Bairro E'),
('Rua F', 'Travessa', 'Bloco 4', 'Cidade F', 'S', '67890123', '60', 'Bairro F'),
('Rua G', 'Rua', 'Apt 303', 'Cidade G', 'S', '78901234', '70', 'Centro'),
('Rua H', 'Avenida', 'Casa', 'Cidade H', 'S', '89012345', '80', 'Bairro H'),
('Rua I', 'Travessa', 'Bloco 5', 'Cidade I', 'S', '90123456', '90', 'Bairro I'),
('Rua J', 'Rua', 'Apt 404', 'Cidade J', 'S', '01234567', '100', 'Centro');

-- Inserindo dados na tabela CLI_ENDERECO
INSERT INTO CLI_ENDERECO (COD_END, COD_CLI) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Inserindo dados na tabela DEPENDENTE
INSERT INTO DEPENDENTE (COD_CLI, PARENTESCO) VALUES 
(1, 'Filho'), (2, 'Esposa'), (3, 'Filha'), (4, 'Filho'), (5, 'Esposa'),
(6, 'Filha'), (7, 'Filho'), (8, 'Esposa'), (9, 'Filha'), (10, 'Filho');

-- Inserindo dados na tabela CATEGORIA
INSERT INTO CATEGORIA (NOME, VALOR) VALUES 
('Ação', 15.00), ('Comédia', 12.00), ('Drama', 10.00), ('Terror', 8.00), ('Ficção Científica', 18.00);

-- Inserindo dados na tabela GENERO
INSERT INTO GENERO (NOME) VALUES 
('Ficção'), ('Romance'), ('Suspense'), ('Aventura'), ('Documentário');

-- Inserindo dados na tabela FILMES
INSERT INTO FILMES (TITULO_ORIGINAL, TITULO, QUANTIDADE, COD_CAT, COD_GEN) VALUES 
('Inception', 'A Origem', 10, 1, 1),
('Titanic', 'Titanic', 5, 2, 2),
('The Shining', 'O Iluminado', 7, 3, 3),
('Interstellar', 'Interestelar', 8, 1, 1),
('The Dark Knight', 'O Cavaleiro das Trevas', 9, 1, 3),
('Forrest Gump', 'Forrest Gump', 6, 2, 2),
('The Matrix', 'Matrix', 7, 5, 1),
('The Godfather', 'O Poderoso Chefão', 5, 3, 3),
('Jurassic Park', 'Parque dos Dinossauros', 10, 1, 4),
('Pulp Fiction', 'Pulp Fiction', 8, 3, 3),
('Back to the Future', 'De Volta para o Futuro', 7, 5, 4),
('Schindler\'s List', 'A Lista de Schindler', 6, 3, 5),
('Gladiator', 'Gladiador', 9, 1, 4),
('Saving Private Ryan', 'O Resgate do Soldado Ryan', 7, 1, 5),
('The Silence of the Lambs', 'O Silêncio dos Inocentes', 6, 4, 3);

-- Inserindo dados na tabela LOCACAO
INSERT INTO LOCACAO (DATA_LOC, DESCONTO, MULTA, SUB_TOTAL, COD_CLI) VALUES 
('2024-06-01', 5.00, 0.00, 50.00, 1),
('2024-06-02', 0.00, 10.00, 30.00, 2),
('2024-06-03', 3.00, 0.00, 40.00, 3),
('2024-06-04', 0.00, 5.00, 35.00, 4),
('2024-06-05', 2.00, 0.00, 25.00, 5),
('2024-06-06', 1.00, 0.00, 20.00, 6),
('2024-06-07', 0.00, 0.00, 15.00, 7),
('2024-06-08', 0.00, 0.00, 10.00, 8),
('2024-06-09', 0.00, 0.00, 5.00, 9),
('2024-06-10', 0.00, 0.00, 50.00, 10),
('2024-06-11', 5.00, 0.00, 50.00, 1),
('2024-06-12', 0.00, 10.00, 30.00, 2),
('2024-06-13', 3.00, 0.00, 40.00, 3),
('2024-06-14', 0.00, 5.00, 35.00, 4),
('2024-06-15', 2.00, 0.00, 25.00, 5),
('2024-06-16', 1.00, 0.00, 20.00, 6),
('2024-06-17', 0.00, 0.00, 15.00, 7),
('2024-06-18', 0.00, 0.00, 10.00, 8),
('2024-06-19', 0.00, 0.00, 5.00, 9),
('2024-06-20', 0.00, 0.00, 50.00, 10);

-- Inserindo dados na tabela LOCACAO_FILME
INSERT INTO LOCACAO_FILME (COD_LOC, COD_FILME, QTD, DATA_DEVOL) VALUES 
(1, 1, 3, '2024-06-05'),
(2, 2, 5, '2024-06-07'),
(3, 3, 7, '2024-06-10'),
(4, 4, 2, '2024-06-12'),
(5, 5, 4, '2024-06-15'),
(6, 6, 1, '2024-06-18'),
(7, 7, 5, '2024-06-20'),
(8, 8, 3, '2024-06-23'),
(9, 9, 6, '2024-06-25'),
(10, 10, 7, '2024-06-28'),
(11, 11, 3, '2024-07-01'),
(12, 12, 5, '2024-07-03'),
(13, 13, 7, '2024-07-06'),
(14, 14, 2, '2024-07-08'),
(15, 15, 4, '2024-07-10'),
(16, 1, 1, '2024-07-12'),
(17, 2, 5, '2024-07-14'),
(18, 3, 3, '2024-07-16'),
(19, 4, 6, '2024-07-18'),
(20, 5, 7, '2024-07-20');

-- Inserindo dados na tabela ATOR
INSERT INTO ATOR (NOME) VALUES 
('Leonardo DiCaprio'), ('Kate Winslet'), ('Jack Nicholson'), 
('Matthew McConaughey'), ('Christian Bale'), ('Tom Hanks'), 
('Keanu Reeves'), ('Marlon Brando'), ('Sam Neill'), 
('John Travolta'), ('Michael J. Fox'), ('Liam Neeson'), 
('Russell Crowe'), ('Tom Hanks'), ('Anthony Hopkins');

-- Inserindo dados na tabela FILME_ATOR
INSERT INTO FILME_ATOR (COD_ATOR, COD_FILME, ATOR, DIRETOR) VALUES 
(1, 1, 'S', 'N'), (2, 2, 'S', 'N'), (3, 3, 'S', 'N'),
(4, 4, 'S', 'N'), (5, 5, 'S', 'N'), (6, 6, 'S', 'N'),
(7, 7, 'S', 'N'), (8, 8, 'S', 'N'), (9, 9, 'S', 'N'),
(10, 10, 'S', 'N'), (11, 11, 'S', 'N'), (12, 12, 'S', 'N'),
(13, 13, 'S', 'N'), (14, 14, 'S', 'N'), (15, 15, 'S', 'N');
