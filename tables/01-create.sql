-- CREATE TABLE
-- Comando para crear una nueva tabla en la base de datos
CREATE TABLE #TABLA (
    #COLUMNA1 INT PRIMARY KEY, -- Columna de tipo entero que actúa como clave primaria
    #COLUMNA2 VARCHAR(100),     -- Columna de tipo cadena de texto con un máximo de 100 caracteres
    #COLUMNA3 DATE              -- Columna de tipo fecha
);

-- ALTER TABLE
-- Comando para modificar la estructura de una tabla existente
ALTER TABLE #TABLA ADD #COLUMNA4 FLOAT; -- Agrega una nueva columna de tipo flotante a la tabla 

ALTER TABLE #TABLA DROP COLUMN #COLUMNA4; -- Elimina la columna #COLUMNA4 de la tabla
ALTER TABLE #TABLA MODIFY #COLUMNA2 VARCHAR(200); -- Modifica la columna #COLUMNA2 para permitir hasta 200 caracteres


-- RESTRICCIONES:

-- NOT NULL
-- Asegura que una columna no acepte valores NULL
ALTER TABLE #TABLA MODIFY #COLUMNA2 VARCHAR(200) NOT NULL; -- Modifica la columna #COLUMNA2 para que no acepte valores NULL

-- UNIQUE
-- Asegura que todos los valores en una columna sean únicos
ALTER TABLE #TABLA ADD CONSTRAINT unique_columna2 UNIQUE (#COLUMNA2); -- Agrega una restricción UNIQUE a la columna #COLUMNA2   

-- FOREIGN KEY
-- Establece una relación entre dos tablas
ALTER TABLE #TABLA ADD CONSTRAINT fk_columna1 FOREIGN KEY (#COLUMNA1) REFERENCES #OTRA_TABLA(#OTRA_COLUMNA); -- Agrega una clave foránea que referencia a otra tabla    

-- PRIMARY KEY
-- Define la clave primaria de la tabla
ALTER TABLE #TABLA ADD CONSTRAINT pk_columna1 PRIMARY KEY (#COLUMNA1); -- Establece #COLUMNA1 como clave primaria de la tabla