-- SUM
-- Se utiliza para calcular la suma total de una columna numérica
SELECT SUM(#COLUMNA) FROM #TABLA WHERE #CONDICIÓN; -- Suma los valores de #COLUMNA que cumplen la condición

-- AVG
-- Se utiliza para calcular el promedio de una columna numérica
SELECT AVG(#COLUMNA) FROM #TABLA WHERE #CONDICIÓN; -- Calcula el promedio de los valores de #COLUMNA que cumplen la condición


-- OPERADORES ARITMÉTICOS
-- Se utilizan para realizar operaciones matemáticas en consultas SQL
SELECT #COLUMNA1 + #COLUMNA2 AS Suma FROM #TABLA;        -- Suma
SELECT #COLUMNA1 - #COLUMNA2 AS Resta FROM #TABLA;       -- Resta
SELECT #COLUMNA1 * #COLUMNA2 AS Multiplicación FROM #TABLA; -- Multiplicación
SELECT #COLUMNA1 / #COLUMNA2 AS División FROM #TABLA;     -- División
SELECT #COLUMNA1 % #COLUMNA2 AS Módulo FROM #TABLA;      -- Módulo (resto de la división)   

-- OPERADORES DE CONCATENACIÓN
-- Se utilizan para concatenar cadenas de texto en consultas SQL
SELECT #COLUMNA1 || ' ' || #COLUMNA2 AS NombreCompleto FROM #TABLA; -- Concatenación con espacio
SELECT CONCAT(#COLUMNA1, ' ', #COLUMNA2) AS NombreCompleto FROM #TABLA; -- Concatenación usando CONCAT function

