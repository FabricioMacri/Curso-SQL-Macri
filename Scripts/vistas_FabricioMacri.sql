USE seguros_db;

-- Vista que muestra a los pacientes que se realizaron estudios
CREATE OR REPLACE VIEW vista_pacientesEstudios AS
(SELECT DISTINCT p.DNI, p.nombre, p.plan FROM pacientes p JOIN estudios e ON (p.DNI = e.DNI)
	WHERE e.DNI != "");

-- Vista que muestra a los pacientes que se atendieron con Heaney Group (Un seguro medico)
CREATE OR REPLACE VIEW vista_pacientesSeguro AS
(SELECT DISTINCT p.DNI, p.nombre, p.plan FROM pacientes p JOIN seguro s ON (p.id_seg = s.id_seg));
    
-- Vista que muestra solo a medicos cardiologos
CREATE OR REPLACE VIEW vista_cardiologos AS 
	SELECT mat, nombre, Esp FROM medicos WHERE Esp = "cardiology";
    
-- Esta vista muestra los pacientes cardiacos que hay en toda la base de datos y los medicos cardiologos
CREATE OR REPLACE VIEW vista_capacidadCardiaca AS
(SELECT DISTINCT p.DNI AS Identificacion, p.nombre FROM pacientes p JOIN estudios e ON (p.DNI = e.DNI)
	WHERE e.Esp = "cardiology")
UNION
(SELECT DISTINCT m.mat, m.nombre FROM medicos m JOIN estudios e ON (m.mat = e.mat)
	WHERE e.Esp = "cardiology");

    
-- Esta vista muestra todos los estudios ordenados por el medico interventor de cada uno
CREATE OR REPLACE VIEW vista_estudiosMedico AS
(SELECT DISTINCT e.id_est, e.mat, e.id_inst, e.DNI, e.Fecha FROM estudios e JOIN medicos m ON (e.mat = m.mat));


