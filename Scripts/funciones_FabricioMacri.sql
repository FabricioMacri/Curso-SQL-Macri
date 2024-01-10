USE seguros_db;

DELIMITER //

CREATE FUNCTION BuscarPorNombre(nombre_buscar VARCHAR(50))
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE dcumento INT;

    -- Realizar la búsqueda en la tabla
    SELECT dni INTO dcumento FROM pacientes WHERE nombre = nombre_buscar;

    -- Retornar el resultado
    RETURN dcumento;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION especialidadMedico(matricula VARCHAR(50))
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
    DECLARE especialidad VARCHAR(50);

    -- Realizar la búsqueda en la tabla
    SELECT Esp INTO especialidad FROM medicos WHERE mat = matricula;

    -- Retornar el resultado
    RETURN especialidad;
END //
DELIMITER ;

-- Ejemplo de uso de la función
SELECT BuscarPorNombre('Vale Marre') AS DNI;
SELECT especialidadMedico('51373') AS especialidad;

