-- NULL
-- Se utiliza para verificar si un valor es NULL o no es NULL
SELECT * FROM #TABLA WHERE #COLUMNA IS NULL; -- Devuelve filas donde #COLUMNA es NULL
SELECT * FROM #TABLA WHERE #COLUMNA IS NOT NULL; -- Devuelve filas donde #COLUMNA no es NULL

-- IFNULL
-- Reemplaza los valores NULL con un valor especificado
SELECT IFNULL(#COLUMNA, 'Valor por defecto') AS #COLUMNA_MODIFICADA FROM #TABLA; -- Reemplaza NULL en #COLUMNA con 'Valor por defecto'

-- COALESCE
-- Devuelve el primer valor no NULL de la lista
SELECT COALESCE(#COLUMNA1, #COLUMNA2, 'Valor por defecto') AS #COLUMNA_MODIFICADA FROM #TABLA; -- Devuelve el primer valor no NULL entre #COLUMNA1, #COLUMNA2 o 'Valor por defecto'

-- NULLIF
-- Devuelve NULL si los dos valores son iguales, de lo contrario devuelve el primer valor
SELECT NULLIF(#COLUMNA1, #COLUMNA2) AS #COLUMNA_MODIFICADA FROM #TABLA; -- Devuelve NULL si #COLUMNA1 es igual a #COLUMNA2, de lo contrario devuelve #COLUMNA1

