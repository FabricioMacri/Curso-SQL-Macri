-- Este SCRIPT busca ingresar un paciente de urgencia que puede no estar registrado al que se le hace un estudio
--  en caso de que no este se lo ingresa como paciente de urgencia y si ya era se vuelve hacia atras

SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

USE seguros_db;

START TRANSACTION;

-- En esta transaccion eliminamos mas de 40 estudios que ya estan viejos y luego los restauramos
--  para probar la funcionalidad de la funcion

SAVEPOINT estudios_paciente;

call seguros_db.EliminarFilasAntiguas();
    
ROLLBACK TO estudios_paciente;

COMMIT;

START TRANSACTION;

-- Esta transaccion actualiza todos los planes a una nueva version con la opcion de deshacer los cambios

SAVEPOINT planes_paciente;

UPDATE pacientes SET plan = "RKR-10" WHERE plan = "RKR-1";
    
ROLLBACK TO estudios_paciente;

COMMIT;



