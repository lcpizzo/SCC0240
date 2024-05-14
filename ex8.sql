SELECT P.NOME_ANF AS 'Nome do Anfitrião', SUBSTRING(P.ENDERECO_ANF, 1, POSITION('/' IN P.ENDERECO_ANF) - 1) as 'Cidade do Anfitrião', COUNT(*) as 'Número de Propriedades'
    FROM PROPRIEDADE P, ESTADIA E
    WHERE P.NOME = E.NOME_PROP
    GROUP BY P.NOME_ANF
    HAVING COUNT(*) > 2;