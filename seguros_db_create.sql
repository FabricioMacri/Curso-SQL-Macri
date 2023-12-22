CREATE SCHEMA `seguros_db` ;

CREATE TABLE `seguros_db`.`paciente` (
  `DNI` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_Inst` INT UNSIGNED NOT NULL,
  `id_seg` INT UNSIGNED NOT NULL,
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
  `id_Inst` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`id_seg`),
  INDEX (id_Inst),
  FOREIGN KEY (id_Inst) REFERENCES institucion(id_Inst),
  UNIQUE INDEX `id_seg_UNIQUE` (`id_seg` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`institucion` (
  `id_Inst` INT UNSIGNED NOT NULL,
  `mat` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NULL,
  PRIMARY KEY (`id_Inst`),
  INDEX (mat),
  FOREIGN KEY (mat) REFERENCES medicos(mat),
  UNIQUE INDEX `id_Inst_UNIQUE` (`id_Inst` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`medicos` (
  `mat` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NULL,
  `Esp` VARCHAR(50) NULL,
  PRIMARY KEY (`mat`),
  UNIQUE INDEX `mat_UNIQUE` (`mat` ASC) VISIBLE);
  
  CREATE TABLE `seguros_db`.`estudios` (
  `id_est` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `mat` INT UNSIGNED NOT NULL,
  `id_inst` INT UNSIGNED NOT NULL,
  `id_seg` INT UNSIGNED NOT NULL,
  `DNI` INT UNSIGNED NOT NULL,
  `Esp` VARCHAR(50) NULL,
  `Fecha` DATE NULL,
  `Desc` VARCHAR(100) NULL,
  `img` VARCHAR(50) NULL,
  PRIMARY KEY (`id_est`),
  INDEX (mat),
  FOREIGN KEY (mat) REFERENCES medicos(mat),
  INDEX (id_inst),
  FOREIGN KEY (id_inst) REFERENCES institucion(id_inst),
  INDEX (id_seg),
  FOREIGN KEY (id_seg) REFERENCES seguro(id_seg),
  INDEX (DNI),
  FOREIGN KEY (DNI) REFERENCES paciente(DNI),
  UNIQUE INDEX `id_est_UNIQUE` (`id_est` ASC) VISIBLE);