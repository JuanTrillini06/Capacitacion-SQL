-- COUNT
-- Se utiliza para contar el número de filas que cumplen una condición específica
SELECT COUNT(*) FROM #TABLA WHERE #CONDICIÓN; -- Cuenta todas las filas que cumplen la condición
SELECT COUNT(#COLUMNA) FROM #TABLA WHERE #CONDICIÓN; -- Cuenta las filas donde #COLUMNA no es NULL y cumple la condición
SELECT COUNT(DISTINCT #COLUMNA) FROM #TABLA WHERE #CONDICIÓN; -- Cuenta los valores distintos de #COLUMNA que cumplen la condición  