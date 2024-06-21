select * from categoria;
select * from genero;
select * from profissao;
select * from cliente;
select * from endereco;
SELECT * FROM filmes;
SELECT * FROM ator;
SELECT * FROM cli_endereco;
SELECT * FROM locacao_filme;

SELECT L.COD_LOC, L.DATA_LOC, F.TITULO, LF.NUM_DIAS, LF.DATA_DEVOL
FROM LOCACAO L
JOIN LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
JOIN FILMES F ON LF.COD_FILME = F.COD_FILME
WHERE L.COD_CLI = 1;



