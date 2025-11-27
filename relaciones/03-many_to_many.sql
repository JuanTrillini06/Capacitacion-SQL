-- VARIOS A VARIOS
/* Una relación varios a varios significa que una fila en la tabla A puede estar relacionada con múltiples filas en la tabla B,
   y una fila en la tabla B también puede estar relacionada con múltiples filas en la tabla A.
   Esto se logra mediante el uso de una tabla intermedia que contiene claves foráneas que hacen referencia a las tablas A y B.
   */
/* Por ejemplo, una tabla de estudiantes y una tabla de cursos, cada estudiante puede estar inscrito en varios cursos,
   y cada curso puede tener varios estudiantes inscritos.
   */

-- Tabla intermedia para la relación varios a varios
/* Creamos una tabla llamada "estudiantes_cursos" que contiene las claves foráneas
   de las tablas "estudiantes" y "cursos" para establecer la relación varios a varios.
   */
CREATE TABLE estudiantes_cursos (
    estudiante_id INT,
    curso_id INT,
    PRIMARY KEY (estudiante_id, curso_id),
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
/* La tabla "estudiantes_cursos" permite que un estudiante esté inscrito en múltiples cursos
    y que un curso tenga múltiples estudiantes inscritos.
    */