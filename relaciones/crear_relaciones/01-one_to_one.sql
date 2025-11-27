CREATE TABLE persona (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE dni (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(20) NOT NULL UNIQUE,
    persona_id INT UNIQUE,
    FOREIGN KEY (persona_id) REFERENCES persona(id) ON DELETE CASCADE
);

-- ON DELETE CASCADE
-- Esto asegura que si una persona es eliminada, su DNI asociado también lo será automáticamente.