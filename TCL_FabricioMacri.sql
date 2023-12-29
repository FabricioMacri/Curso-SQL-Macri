-- Este SCRIPT busca ingresar un paciente de urgencia que puede no estar registrado al que se le hace un estudio
--  en caso de que no este se lo ingresa como paciente de urgencia y si ya era se vuelve hacia atras

SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;

USE seguros_db;

START TRANSACTION;

INSERT INTO estudios (id_est, mat, id_inst, id_seg, DNI, Esp, Fecha, `Desc` ,img) 
	VALUES (331792970, 7656, 33137, 133834, 82036703, "dermatology", CURDATE(), "Quemaduras de 3er grado", "Url");
    
SAVEPOINT paciente_NN;

INSERT INTO paciente (DNI, id_Inst, id_seg, nombre, email, plan) 
	VALUES (82036703, 33137, 133834, "Jose Lopez", "jose@gmail.com", "Urgencias");
    
SET busqueda = "";
SELECT dni INTO BUSQUEDA FROM paciente WHERE DNI = 82036703;

IF busqueda <> "" THEN

	ROLLBACK TO <paciente_NN>;
	COMMIT;

ELSE

	COMMIT

END IF;

