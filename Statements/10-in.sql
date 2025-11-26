-- IN
-- Limite basado en uno o varios valores específicos
SELECT * FROM #TABLA WHERE #COLUMNA IN (valor1, valor2, valor3); -- Selecciona filas donde #COLUMNA coincide con alguno de los valores especificados

-- NOT IN
-- Excluye uno o varios valores específicos
SELECT * FROM #TABLA WHERE #COLUMNA NOT IN (valor1, valor2, valor3); -- Selecciona filas donde #COLUMNA no coincide con ninguno de los valores especificados    

   