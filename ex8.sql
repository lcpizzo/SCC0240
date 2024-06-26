WITH PROP_ANF AS (
    SELECT P.NOME, P.ENDERECO, A.NOME AS NOME_ANF, A.ENDERECO AS ENDERECO_ANF
        FROM PROPRIEDADE P LEFT JOIN ANFITRIAO A
        ON P.NOME_ANF = A.NOME
)

SELECT P.NOME_ANF AS "Nome do Anfitrião", SUBSTRING(P.ENDERECO_ANF FROM POSITION('/' IN P.ENDERECO_ANF) + 1 FOR (POSITION('/' IN SUBSTRING(P.ENDERECO_ANF FROM POSITION('/' IN P.ENDERECO_ANF) + 1))) - 1) AS "Cidade do Anfitrião", COUNT(DISTINCT(P.NOME, P.ENDERECO)) AS "Número de Propriedades"
    FROM PROP_ANF P LEFT JOIN ESTADIA E
    ON P.NOME = E.NOME_PROP
    GROUP BY P.NOME_ANF, P.ENDERECO_ANF
    HAVING COUNT(*) > 2;