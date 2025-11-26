-- GROUP BY
-- Agrupa los resultados según una o más columnas
SELECT #COLUMNA1, COUNT(*) AS Total FROM #TABLA GROUP BY #COLUMNA1; -- Cuenta el número de filas por cada valor distinto en #COLUMNA1   

-- Agrupar por múltiples columnas
SELECT #COLUMNA1, #COLUMNA2, SUM(#COLUMNA3) AS Suma FROM #TABLA GROUP BY #COLUMNA1, #COLUMNA2; -- Suma los valores de #COLUMNA3 para cada combinación distinta de #COLUMNA1 y #COLUMNA2

-- HAVING
-- Filtrar grupos después de agrupar
SELECT #COLUMNA1, COUNT(*) AS Total FROM #TABLA GROUP BY #COLUMNA1 HAVING COUNT(*) > 5; -- Muestra solo los grupos donde el conteo es mayor a 5 