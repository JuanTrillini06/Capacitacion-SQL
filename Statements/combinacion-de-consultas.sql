-- COMBINAR SELECTS
SELECT DISTINCT #COLUMNA FROM #TABLA WHERE #CONDICIÓN ORDER BY #COLUMNA ASC;

-- IN con subconsulta
-- Utiliza una subconsulta para definir los valores
SELECT * FROM #TABLA1 WHERE #COLUMNA IN (SELECT #COLUMNA FROM #TABLA2 WHERE #CONDICIÓN); -- Selecciona filas de #TABLA1 donde #COLUMNA coincide con los resultados de la subconsulta

-- CASE combinando select, condiciones, null y order by
SELECT 
    #COLUMNA,
    CASE 
        WHEN #COLUMNA IS NULL THEN 'Valor por defecto'
        WHEN #COLUMNA = 'Condición1' THEN 'Resultado1'
        WHEN #COLUMNA = 'Condición2' THEN 'Resultado2'
        ELSE 'Otro Resultado'
    END AS #COLUMNA_MODIFICADA
FROM #TABLA
WHERE #COLUMNA IN ('Condición1', 'Condición2', 'Condición3')
ORDER BY 
    CASE 
        WHEN #COLUMNA = 'Condición1' THEN 1
        WHEN #COLUMNA = 'Condición2' THEN 2
        ELSE 3
    END;
