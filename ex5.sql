SELECT  P.nome, P.n_quartos
    FROM PROPRIEDADE P
    GROUP BY P.n_quartos
    CASE P.n_quartos > 1 THEN "Casa Inteira"
    ELSE "Apenas um quarto"

SELECT 
    P.NOME,
    SUBSTRING(
        P.ENDERECO,
        CHARINDEX('/', P.ENDERECO) + 1,
        CHARINDEX('/', P.ENDERECO, CHARINDEX('/', P.ENDERECO) + 1) - CHARINDEX('/', P.ENDERECO) - 1
    ) AS cidade
    FROM PRORPIEDADE P
    GROUP BY 
    SUBSTRING(
        P.ENDERECO,
        CHARINDEX('/', P.ENDERECO) + 1,
        CHARINDEX('/', P.ENDERECO, CHARINDEX('/', P.ENDERECO) + 1) - CHARINDEX('/', P.ENDERECO) - 1
    )
