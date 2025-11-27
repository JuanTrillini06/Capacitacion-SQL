CREATE TABLE lenguajes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE desarrolladores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE desarrollador_lenguaje (
    id INT PRIMARY KEY AUTO_INCREMENT,
    desarrollador_id INT,
    lenguaje_id INT,
    FOREIGN KEY (desarrollador_id) REFERENCES desarrolladores(id) ON DELETE CASCADE,
    FOREIGN KEY (lenguaje_id) REFERENCES lenguajes(id) ON DELETE CASCADE,
    UNIQUE (desarrollador_id, lenguaje_id)
);