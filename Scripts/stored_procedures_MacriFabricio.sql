USE `seguros_db`;
DROP procedure IF EXISTS `medic_area_order`;

DELIMITER $$
USE `seguros_db`$$

-- Este procedimiento permite traer todos los estudios de una area medica en particular

CREATE PROCEDURE `medic_area_order` (Referencia VARCHAR(50))
BEGIN
IF Referencia <> '' THEN 
		SET @area_order = concat('WHERE Esp = "', Referencia, '";');
        
    ELSE 
        SET @area_order = '';
    END IF;

-- Traemos todos los estudios pertenecientes al area indicada o todos ellos en caso de no indicarla

    SET @clausula = concat('SELECT * FROM seguros_db.vista_estudios ', @area_order);
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END$$

DELIMITER ;
DELIMITER $$

-- Este procedimiento elimina todos los estudios que tienen mas de 10 años de antiguedad

DROP procedure IF EXISTS `EliminarFilasAntiguas`;

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarFilasAntiguas`()
BEGIN
    -- Definimos la fecha límite (hoy menos 10 años)
    DECLARE fecha_limite DATE;
    SET fecha_limite = DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

    -- Eliminamos las filas con mas de 10 años de antiguedad
    DELETE FROM estudios
    WHERE Fecha < fecha_limite;
END$$

DELIMITER ;

-- Ejemplos de uso:
-- call seguros_db.EliminarFilasAntiguas(); // En el Script TCL se utiliza para probarlo sin perder los datos
-- call seguros_db.medic_area_order("orthopedics");
-- call seguros_db.medic_area_order("neurology");
-- call seguros_db.medic_area_order("dermatology");
