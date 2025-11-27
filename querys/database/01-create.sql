-- CREATE DATABASE
-- Crea la base de datos si no existe
CREATE DATABASE IF NOT EXISTS #NOMBRE_BASE_DATOS; -- Crea la base de datos #NOMBRE_BASE_DATOS si no existe

-- USE DATABASE
-- Selecciona la base de datos para usar
USE #NOMBRE_BASE_DATOS; -- Selecciona la base de datos #NOMBRE_BASE_DATOS para usar 

-- CREATE TABLE
-- Crea una tabla con las columnas especificadas
CREATE TABLE IF NOT EXISTS #NOMBRE_TABLA (
    #COLUMNA1 TIPO_DATO1 CONSTRAINTS1, -- Define #COLUMNA1 con TIPO_DATO1 y CONSTRAINTS1
    #COLUMNA2 TIPO_DATO2 CONSTRAINTS2, -- Define #COLUMNA2 con TIPO_DATO2 y CONSTRAINTS2
    #COLUMNA3 TIPO_DATO3 CONSTRAINTS3  -- Define #COLUMNA3 con TIPO_DATO3 y CONSTRAINTS3
); -- Crea la tabla #NOMBRE_TABLA si no existe

-- CREATE INDEX
-- Crea un índice en una columna para mejorar el rendimiento de las consultas
CREATE INDEX IF NOT EXISTS #NOMBRE_INDICE ON #NOMBRE_TABLA (#COLUMNA); -- Crea un índice #NOMBRE_INDICE en #COLUMNA de #NOMBRE_TABLA si no existe