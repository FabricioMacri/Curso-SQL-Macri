-- CREACION DE USURIOS 
USE seguros_db;
-- Usuario de solo lectura
CREATE USER "onlyReed@localhost" IDENTIFIED BY "1234";
-- Otorgo el permiso de lectura SELECT
GRANT SELECT ON estudios TO "onlyReed@localhost";
GRANT SELECT ON institucion TO "onlyReed@localhost";
GRANT SELECT ON medicos TO "onlyReed@localhost";
GRANT SELECT ON paciente TO "onlyReed@localhost";
GRANT SELECT ON seguro TO "onlyReed@localhost";

-- Usuario con Select Insert Update (SIU)
CREATE USER "SIU@localhost" IDENTIFIED BY "1234";

-- Otorgo el permiso de lectura SELECT, insertar datos INSERT y actualizar datos UPDATE
GRANT SELECT, INSERT ,UPDATE ON estudios TO "SIU@localhost";
GRANT SELECT, INSERT ,UPDATE ON institucion TO "SIU@localhost";
GRANT SELECT, INSERT ,UPDATE ON medicos TO "SIU@localhost";
GRANT SELECT, INSERT ,UPDATE ON paciente TO "SIU@localhost";
GRANT SELECT, INSERT ,UPDATE ON seguro TO "SIU@localhost";

-- Ver los usurios
SELECT * FROM mysql.user WHERE user LIKE "onlyReed@localhost";
-- SELECT * FROM mysql.user WHERE user LIKE "SIU@localhost";

-- Ver sus permisos
-- SHOW GRANTS FOR "onlyReed@localhost";
-- SHOW GRANTS FOR "SIU@localhost";

-- Eliminar los usuarios luego de las pruebas
-- DROP USER "onlyReed@localhost";
-- DROP USER "SIU@localhost";

