
DROP TRIGGER IF EXISTS `seguros_db`.`pacientes_BEFORE_DELETE`;

DELIMITER $$

-- Este trigger se dispara luego de eliminar a un paciente, eliminando tambien los estudios vinculados a el

USE `seguros_db`$$
CREATE DEFINER = CURRENT_USER TRIGGER `seguros_db`.`pacientes_BEFORE_DELETE` BEFORE DELETE ON `pacientes` FOR EACH ROW
BEGIN
DELETE FROM estudios WHERE DNI = OLD.DNI;
END$$
DELIMITER ;

-- Este trigger deja registro de que usuario inserto a un paciente en la base de datos

DROP TRIGGER IF EXISTS `seguros_db`.`pacientes_BEFORE_INSERT`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `paciente_BEFORE_INSERT` BEFORE INSERT ON `pacientes` FOR EACH ROW 
BEGIN
INSERT INTO logs (usuario, tabla, accion, fecha, hora) 
VALUES(user(), "paciente", "insert", CURDATE(), curtime());
END;

DELIMITER;

-- EJEMPLOS

-- DELETE FROM pacientes WHERE DNI = 62753801;

-- insert into pacientes (DNI, id_seg, nombre, plan) values ('62753801', 7436, 'Nicolas Kemwall', 'LO-1');
