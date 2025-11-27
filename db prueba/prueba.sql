/* Las siguientes queries crean una base de datos llamada "prueba" con las tablas:
   usuario, dni, empresa, lenguaje y usuario_lenguaje. La tabla usuario tiene una relación uno a uno con la tabla dni,
   una relación uno a muchos con la tabla empresa, y una relación muchos a muchos con la tabla lenguaje. */ 
   

CREATE DATABASE IF NOT EXISTS prueba;
USE prueba;

CREATE TABLE usuario (
	id INT PRIMARY KEY UNIQUE auto_increment,
    nombre VARCHAR(15),
    apellido VARCHAR(30),
    empresa_id INT UNIQUE,
    FOREIGN KEY (empresa_id) REFERENCES empresa(id) ON DELETE SET NULL
);

CREATE TABLE dni (
	id INT PRIMARY KEY AUTO_INCREMENT,
    dni_numero INT NOT NULL UNIQUE,
    usuario_id INT UNIQUE,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE
);

CREATE TABLE empresa (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE lenguaje (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE usuario_lenguaje (
	id INT PRIMARY KEY AUTO_INCREMENT,
    usuario_id INT,
    lenguaje_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE,
    FOREIGN KEY (lenguaje_id) REFERENCES lenguaje(id) ON DELETE CASCADE,
    UNIQUE (usuario_id, lenguaje_id)
);