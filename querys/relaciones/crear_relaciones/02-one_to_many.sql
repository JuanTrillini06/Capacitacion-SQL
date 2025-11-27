CREATE TABLE empresa (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL

);

CREATE TABLE empleado (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    empresa_id INT UNIQUE,
    FOREIGN KEY (empresa_id) REFERENCES empresa(id) ON DELETE SET NULL
);

-- ON DELETE SET NULL
-- Esto asegura que si una empresa es eliminada, el campo empresa_id en los empleados asociados se establecerá en NULL, preservando los registros de empleados.

-- Para actualizar un campo a foreign key en una tabla existente, se puede usar:
-- ALTER TABLE empleado ADD COLUMN empresa_id INT UNIQUE;
-- ALTER TABLE empleado ADD CONSTRAINT fk_empresa FOREIGN KEY (empresa_id) REFERENCES empresa(id) ON DELETE SET NULL;   
