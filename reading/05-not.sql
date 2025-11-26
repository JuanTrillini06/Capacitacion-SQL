-- NOT
-- Se utiliza para negar una condición en una cláusula WHERE
SELECT * FROM #TABLA WHERE NOT #COLUMNA = #VALOR;

-- AND, OR, NOT combinados
-- Combina múltiples condiciones en una cláusula WHERE
SELECT * FROM #TABLA WHERE #COLUMNA1 = #VALOR1 AND NOT #COLUMNA2 = #VALOR2;
SELECT * FROM #TABLA WHERE NOT (#COLUMNA1 = #VALOR1 OR #COLUMNA2 = #VALOR2);