
USE seguros_db;

DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `paciente_BEFORE_DELETE` BEFORE DELETE ON `paciente` FOR EACH ROW BEGIN
DELETE FROM estudios WHERE DNI in (select DNI from paciente);

END

DELIMITER //
DELIMITER //
CREATE DEFINER=`root`@`localhost` TRIGGER `paciente_BEFORE_INSERT` BEFORE INSERT ON `paciente` FOR EACH ROW BEGIN
INSERT INTO log (usuario, tabla, accion, fecha, hora) 
VALUES(user(), "paciente", "insert", CURDATE(), curtime());
END

DELIMITER //