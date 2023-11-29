CREATE SCHEMA `seguros_db` ;

CREATE TABLE `seguros_db`.`paciente` (
  `DNI` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_Inst` INT NULL,
  `id_seg` INT NULL,
  `nombre` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `plan` VARCHAR(50) NULL,
  PRIMARY KEY (`DNI`),
  INDEX (id_Inst),
  FOREIGN KEY (id_Inst) REFERENCES institucion(id_Inst),
  INDEX (id_seg),
  FOREIGN KEY (id_seg) REFERENCES seguro(id_seg),
  UNIQUE INDEX `DNI_UNIQUE` (`DNI` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`seguro` (
  `id_seg` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Instituciones` INT NULL,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`id_seg`),
  INDEX (Instituciones),
  FOREIGN KEY (id_Inst) REFERENCES institucion(id_Inst),
  UNIQUE INDEX `id_seg_UNIQUE` (`id_seg` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`institucion` (
  `id_Inst` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_med` INT NULL,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`id_Inst`),
  INDEX (id_med),
  FOREIGN KEY (id_med) REFERENCES medicos(id_med),
  UNIQUE INDEX `id_Inst_UNIQUE` (`id_Inst` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`medicos` (
  `mat` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  `Esp` VARCHAR(50) NULL,
  PRIMARY KEY (`mat`),
  UNIQUE INDEX `mat_UNIQUE` (`mat` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`new_table` (
  `id_est` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `n_mat` INT NULL,
  `id_inst` INT NULL,
  `id_seg` INT NULL,
  `DNI` INT NULL,
  `Esp` VARCHAR(50) NULL,
  `Fecha` DATE NULL,
  `Desc` VARCHAR(100) NULL,
  `img` VARCHAR(50) NULL,
  PRIMARY KEY (`id_est`),
  INDEX (n_mat),
  FOREIGN KEY (n_mat) REFERENCES medicos(n_mat),
  INDEX (id_inst),
  FOREIGN KEY (id_inst) REFERENCES institucion(id_inst),
  INDEX (id_seg),
  FOREIGN KEY (id_seg) REFERENCES seguro(id_seg),
  INDEX (DNI),
  FOREIGN KEY (DNI) REFERENCES paciente(DNI),
  UNIQUE INDEX `id_est_UNIQUE` (`id_est` ASC) VISIBLE);