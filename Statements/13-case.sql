-- CASE - WHEN - ELSE
-- Sirve para realizar comparaciones condicionales y devolver valores basados en esas comparaciones.
SELECT 
    #COLUMNA,
    CASE 
        WHEN #COLUMNA < 10 THEN 'Menor que 10'
        WHEN #COLUMNA BETWEEN 10 AND 20 THEN 'Entre 10 y 20'
        ELSE 'Mayor que 20'
    END AS Rango
FROM #TABLA;

-- CASE con múltiples condiciones
SELECT
    #COLUMNA,
    CASE 
        WHEN #COLUMNA % 2 = 0 THEN 'Par'
        WHEN #COLUMNA % 2 <> 0 THEN 'Impar'
        ELSE 'Desconocido'
    END AS Tipo
FROM #TABLA;

-- CASE en cláusula ORDER BY
SELECT * FROM #TABLA
ORDER BY 
    CASE 
        WHEN #COLUMNA < 10 THEN 1
        WHEN #COLUMNA BETWEEN 10 AND 20 THEN 2
        ELSE 3
    END;

-- CASE anidado
SELECT
    #COLUMNA,
    CASE 
        WHEN #COLUMNA < 10 THEN 
            CASE 
                WHEN #COLUMNA < 5 THEN 'Menor que 5'
                ELSE 'Entre 5 y 9'
            END
        WHEN #COLUMNA BETWEEN 10 AND 20 THEN 'Entre 10 y 20'
        ELSE 'Mayor que 20'
    END AS RangoDetallado
FROM #TABLA;