-- ALIAS
-- Asignar nombres temporales a tablas o columnas
SELECT #COLUMNA AS alias_columna FROM #TABLA AS alias_tabla; -- Asigna un alias a la columna y a la tabla

-- Usar alias en condiciones
SELECT alias_columna FROM alias_tabla WHERE alias_columna = #VALOR; -- Utiliza el alias en la cláusula WHERE