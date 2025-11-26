-- CONSULTAR DATOS CON CONDICIONES
SELECT * FROM #TABLA WHERE #CONDICIÓN;

-- CONDICIONES COMUNES

-- Igual a (=)
SELECT * FROM #TABLA WHERE #COLUMNA = #VALOR;
-- Diferente de (<> o !=)
SELECT * FROM #TABLA WHERE #COLUMNA <> #VALOR;
SELECT * FROM #TABLA WHERE #COLUMNA != #VALOR;
-- Mayor que (>)
SELECT * FROM #TABLA WHERE #COLUMNA > #VALOR;
-- Menor que (<)
SELECT * FROM #TABLA WHERE #COLUMNA < #VALOR;
-- Mayor o igual que (>=)
SELECT * FROM #TABLA WHERE #COLUMNA >= #VALOR;
-- Menor o igual que (<=)
SELECT * FROM #TABLA WHERE #COLUMNA <= #VALOR;
-- Entre (BETWEEN ... AND ...)
SELECT * FROM #TABLA WHERE #COLUMNA BETWEEN #VALOR1 AND #VALOR2;
-- En una lista (IN (...))
SELECT * FROM #TABLA WHERE #COLUMNA IN (#VALOR1, #VALOR2, #VALOR3);
-- Como (LIKE ...)
-- El % se utiliza como comodín para representar cero o más caracteres
SELECT * FROM #TABLA WHERE #COLUMNA LIKE 'PATRÓN%'; -- Se utiliza para buscar patrones en cadenas
SELECT * FROM #TABLA WHERE #COLUMNA LIKE '%#PATRÓN'; -- Busca cadenas que terminan con el patrón
SELECT * FROM #TABLA WHERE #COLUMNA LIKE '%#PATRÓN%'; -- Busca cadenas que contienen el patrón

-- minimos y maximos
SELECT * FROM #TABLA WHERE #COLUMNA = (SELECT MIN(#COLUMNA) FROM #TABLA); -- Devuelve filas con el valor mínimo en #COLUMNA
SELECT * FROM #TABLA WHERE #COLUMNA = (SELECT MAX(#COLUMNA) FROM #TABLA); -- Devuelve filas con el valor máximo en #COLUMNA
