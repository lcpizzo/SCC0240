SELECT *
  FROM PROPRIEDADE;

SELECT 
    CASE 
        WHEN n_quartos > 1 THEN 'Casa Inteira'
        ELSE 'Apenas um quarto'
    END AS tipo_propriedade,
    COUNT(*) AS quantidade
FROM 
    PROPRIEDADE
GROUP BY 
    tipo_propriedade;

SELECT 
    cidade,
    COUNT(*) AS quantidade
FROM (
    SELECT
        split_part(endereco, '/', 2) AS cidade
    FROM 
        PROPRIEDADE
) AS subquery
GROUP BY 
    cidade
ORDER BY 
    quantidade DESC;