# NULL
-- Se utiliza para verificar si un valor es NULL o no es NULL
SELECT * FROM #TABLA WHERE #COLUMNA IS NULL; -- Devuelve filas donde #COLUMNA es NULL
SELECT * FROM #TABLA WHERE #COLUMNA IS NOT NULL; -- Devuelve filas donde #COLUMNA no es NULL