-- COMANDOS DE ELIMINACION DE SQL

-- DELETE
-- Elimina registros existentes en una tabla
DELETE FROM #TABLA WHERE #COLUMNA = 'Condición'; -- Elimina registros donde #COLUMNA cumple la condición    

-- TRUNCATE
-- Elimina todos los registros de una tabla de manera rápida
TRUNCATE TABLE #TABLA; -- Elimina todos los registros de #TABLA

-- DROP
-- Elimina una tabla completa de la base de datos
DROP TABLE #TABLA; -- Elimina la tabla #TABLA de la base de datos

-- DROP COLUMN
-- Elimina una columna específica de una tabla
ALTER TABLE #TABLA DROP COLUMN #COLUMNA; -- Elimina la columna #COLUMNA de la tabla #TABLA  

-- DROP DATABASE
-- Elimina una base de datos completa
DROP DATABASE #BASE_DE_DATOS; -- Elimina la base de datos #BASE_DE_DATOS