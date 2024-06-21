--- 1-Listar todos os filmes alugados por um cliente específico, incluindo a data de locação e a data de devolução.

SELECT
    C.NOME AS Cliente,
    F.TITULO AS Filme,
    L.DATA_LOC AS Data_Locacao,
    LF.DATA_DEVOL AS Data_Devolucao
FROM
    CLIENTE C
        JOIN
    LOCACAO L ON C.COD_CLI = L.COD_CLI
        JOIN
    LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
        JOIN
    FILMES F ON LF.COD_FILME = F.COD_FILME
WHERE
    C.COD_CLI = 1;

--- 2 - Obter uma lista de clientes e seus dependentes.

SELECT 
    C.COD_CLI AS Codigo_Cliente,
    C.NOME AS Nome_Cliente,
    D.COD_DEP AS Codigo_Dependente,
    D.PARENTESCO AS Parentesco
FROM 
    CLIENTE C
LEFT JOIN 
    DEPENDENTE D ON C.COD_CLI = D.COD_CLI
ORDER BY 
    C.COD_CLI, D.COD_DEP;

--- 3 - Listar todos os filmes de um determinado gênero.

SELECT 
    F.TITULO AS Filme,
    G.NOME AS Genero
FROM 
    FILMES F
JOIN 
    GENERO G ON F.COD_GEN = G.COD_GEN
WHERE 
    G.NOME = 'Ação';

--- 4 - Exibir todos os clientes que têm uma profissão específica.
SELECT 
    C.NOME AS Cliente,
    P.NOME AS Profissao
FROM 
    CLIENTE C
JOIN 
    PROFISSAO P ON C.COD_PROF = P.COD_PROF
WHERE 
    P.NOME = 'Engenheiro';

--- 5 - Encontrar todos os filmes em uma categoria específica com quantidade disponível maior que 5.

SELECT 
    F.TITULO AS Filme,
    C.NOME AS Categoria,
    F.QUANTIDADE AS Quantidade_Disponivel
FROM 
    FILMES F
JOIN 
    CATEGORIA C ON F.COD_CAT = C.COD_CAT
WHERE 
    C.NOME = 'Ação'
    AND F.QUANTIDADE > 5;

--- 6 - Listar todos os atores que participaram de filmes com um determinado título.

SELECT 
    F.TITULO AS Filme,
    A.NOME AS Ator
FROM 
    FILMES F
JOIN 
    FILME_ATOR FA ON F.COD_FILME = FA.COD_FILME
JOIN 
    ATOR A ON FA.COD_ATOR = A.COD_ATOR
WHERE 
    F.TITULO = 'Matrix';

--- 7 - Obter o endereço completo de um cliente específico.

SELECT 
    C.NOME AS Cliente,
    E.LOGRADOURO AS Logradouro,
    E.TIPO_LOG AS Tipo_Logradouro,
    E.COMPLEMENTO AS Complemento,
    E.CIDADE AS Cidade,
    E.UF AS UF,
    E.CEP AS CEP,
    E.NUMERO AS Numero,
    E.BAIRRO AS Bairro
FROM 
    CLIENTE C
JOIN 
    CLI_ENDERECO CE ON C.COD_CLI = CE.COD_CLI
JOIN 
    ENDERECO E ON CE.COD_END = E.COD_END
WHERE 
    C.COD_CLI = 1;

--- 8 - Listar todos os filmes e seus respectivos gêneros e categorias.

SELECT 
    F.TITULO AS Filme,
    G.NOME AS Genero,
    C.NOME AS Categoria
FROM 
    FILMES F
JOIN 
    GENERO G ON F.COD_GEN = G.COD_GEN
JOIN 
    CATEGORIA C ON F.COD_CAT = C.COD_CAT;

--- 9 - Mostrar todos os clientes que alugaram um filme específico e a data de locação.

SELECT 
    C.NOME AS Cliente,
    L.DATA_LOC AS Data_Locacao
FROM 
    CLIENTE C
JOIN 
    LOCACAO L ON C.COD_CLI = L.COD_CLI
JOIN 
    LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
JOIN 
    FILMES F ON LF.COD_FILME = F.COD_FILME
WHERE 
    F.TITULO = 'Matrix';

--- 10 - Exibir a lista de clientes com multas superiores a um valor específico.

SELECT 
    C.NOME AS Cliente,
    SUM(L.MULTA) AS Total_Multa
FROM 
    CLIENTE C
JOIN 
    LOCACAO L ON C.COD_CLI = L.COD_CLI
GROUP BY 
    C.NOME
HAVING 
    SUM(L.MULTA) > 50;

--- 11 - Listar todas as locações feitas em um período específico.
SELECT 
    L.COD_LOC AS Codigo_Locacao,
    C.NOME AS Cliente,
    L.DATA_LOC AS Data_Locacao,
    L.DESCONTO AS Desconto,
    L.MULTA AS Multa,
    L.SUB_TOTAL AS Sub_Total
FROM 
    LOCACAO L
JOIN 
    CLIENTE C ON L.COD_CLI = C.COD_CLI
WHERE 
    L.DATA_LOC BETWEEN '2024-06-01' AND '2024-06-10';

--- 12 - Obter a quantidade total de filmes alugados por cada cliente. (DESAFIO)

SELECT 
    C.NOME AS Cliente,
    COUNT(LF.COD_FILME) AS Total_Filmes_Alugados
FROM 
    CLIENTE C
JOIN 
    LOCACAO L ON C.COD_CLI = L.COD_CLI
JOIN 
    LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
GROUP BY 
    C.COD_CLI, C.NOME
ORDER BY 
    Total_Filmes_Alugados DESC;

---13 - Listar os clientes e os filmes que eles alugaram, ordenados por data de locação.
SELECT 
    C.NOME AS Cliente,
    F.TITULO AS Filme,
    L.DATA_LOC AS Data_Locacao
FROM 
    CLIENTE C
JOIN 
    LOCACAO L ON C.COD_CLI = L.COD_CLI
JOIN 
    LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
JOIN 
    FILMES F ON LF.COD_FILME = F.COD_FILME
ORDER BY 
    L.DATA_LOC;

--- 14 - Mostrar todos os clientes que moram em uma cidade específica e que alugaram filmes de uma categoria específica.

SELECT 
    C.NOME AS Cliente,
    E.CIDADE AS Cidade,
    CAT.NOME AS Categoria
FROM 
    CLIENTE C
JOIN 
    CLI_ENDERECO CE ON C.COD_CLI = CE.COD_CLI
JOIN 
    ENDERECO E ON CE.COD_END = E.COD_END
JOIN 
    LOCACAO L ON C.COD_CLI = L.COD_CLI
JOIN 
    LOCACAO_FILME LF ON L.COD_LOC = LF.COD_LOC
JOIN 
    FILMES F ON LF.COD_FILME = F.COD_FILME
JOIN 
    CATEGORIA CAT ON F.COD_CAT = CAT.COD_CAT
WHERE 
    E.CIDADE = 'São Paulo'
    AND CAT.NOME = 'Drama';

--- 15 - Encontrar todos os atores que participaram de pelo menos 5 filmes, listando o nome do ator e o número de filmes em que atuou. (DESAFIO)

SELECT 
    A.NOME AS Ator,
    COUNT(FA.COD_FILME) AS Numero_Filmes
FROM 
    ATOR A
JOIN 
    FILME_ATOR FA ON A.COD_ATOR = FA.COD_ATOR
GROUP BY 
    A.NOME
HAVING 
    COUNT(FA.COD_FILME) >= 5
ORDER BY 
    Numero_Filmes DESC;


---16 - Exibir a quantidade total de filmes alugados por categoria e gênero, incluindo apenas as categorias e gêneros que têm mais de 50 filmes alugados no total (DESAFIO)

SELECT 
    C.NOME AS Categoria,
    G.NOME AS Genero,
    COUNT(LF.COD_FILME) AS Total_Filmes_Alugados
FROM 
    LOCACAO_FILME LF
JOIN 
    FILMES F ON LF.COD_FILME = F.COD_FILME
JOIN 
    CATEGORIA C ON F.COD_CAT = C.COD_CAT
JOIN 
    GENERO G ON F.COD_GEN = G.COD_GEN
GROUP BY 
    C.NOME, G.NOME
HAVING 
    COUNT(LF.COD_FILME) > 50
ORDER BY 
    Total_Filmes_Alugados DESC;













