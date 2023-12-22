USE seguros_db;

CREATE VIEW vista_pacientes AS
SELECT
    DNI,
    id_Inst,
    id_seg,
    nombre,
    email,
    plan
FROM
	paciente;
    
CREATE VIEW vista_institucion AS
SELECT
    id_Inst,
    id_med,
    nombre
FROM
	institucion;
    
CREATE VIEW vista_medicos AS
SELECT
    mat,
    nombre,
    Esp
FROM
	medicos;
    
CREATE VIEW vista_seguro AS
SELECT
    id_seg,
    Instituciones,
    nombre
FROM
	seguro;
    
CREATE VIEW vista_estudios AS
SELECT
    id_est,
    n_mat,
    id_inst,
    id_seg,
    DNI,
    Esp,
    fecha,
    "Desc" as descripcion,
    img
FROM
	estudios;
