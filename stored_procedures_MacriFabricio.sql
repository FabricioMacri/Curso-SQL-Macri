USE seguros_db;

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `medic_area_order`(IN Referencia VARCHAR(50))
BEGIN
-- EN caso que se envie un area filtramos por esta
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
END

DELIMITER ;
DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarFilasAntiguas`()
BEGIN
    -- Definimos la fecha límite (hoy menos 10 años)
    DECLARE fecha_limite DATE;
    SET fecha_limite = DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

    -- Eliminamos las filas con mas de 10 años de antiguedad
    DELETE FROM estudios
    WHERE Fecha < fecha_limite;
END
DELIMITER ;

-- Ejemplos de uso:
-- call seguros_db.EliminarFilasAntiguas();
-- call seguros_db.medic_area_order("orthopedics");
-- call seguros_db.medic_area_order("neurology");
-- call seguros_db.medic_area_order("dermatology");
