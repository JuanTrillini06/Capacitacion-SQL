-- LIMIT
-- Se utiliza para limitar el número de filas devueltas por una consulta SELECT
SELECT * FROM #TABLA LIMIT #NÚMERO_DE_FILAS; -- Devuelve las primeras #NÚMERO_DE_FILAS filas

-- OFFSET
-- Se utiliza para omitir un número específico de filas antes de comenzar a devolver filas
SELECT * FROM #TABLA OFFSET #NÚMERO_DE_FILAS; -- Omite las primeras #NÚMERO_DE_FILAS filas

-- PAGINACION CON LIMIT Y OFFSET
-- Se utiliza para paginar resultados en consultas SELECT
SELECT * FROM #TABLA LIMIT #NÚMERO_DE_FILAS OFFSET #DESPLAZAMIENTO;
-- Devuelve #NÚMERO_DE_FILAS filas comenzando desde la fila #DESPLAZAMIENTO