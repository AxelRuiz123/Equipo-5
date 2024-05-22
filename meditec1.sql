-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema meditec1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema meditec1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `meditec1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `meditec1` ;

-- -----------------------------------------------------
-- Table `meditec1`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec1`.`medico` (
  `id_medico` INT NOT NULL,
  `nombre` VARCHAR(80) NULL DEFAULT NULL,
  `apellido_pat` VARCHAR(60) NULL DEFAULT NULL,
  `apellido_mat` VARCHAR(60) NULL DEFAULT NULL,
  `fecha_nac` DATE NULL DEFAULT NULL,
  `no_cedula` VARCHAR(7) NULL DEFAULT NULL,
  `usuario` VARCHAR(6) NULL DEFAULT NULL,
  `correo` TINYTEXT NULL DEFAULT NULL,
  `contraseña` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE INDEX `no_cedula` (`no_cedula` ASC),
  UNIQUE INDEX `usuario` (`usuario` ASC),
  UNIQUE INDEX `contraseña` (`contraseña` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `meditec1`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec1`.`paciente` (
  `id_paciente` INT NOT NULL,
  `nombre` VARCHAR(80) NULL DEFAULT NULL,
  `apellido_pat` VARCHAR(60) NULL DEFAULT NULL,
  `apellido_mat` VARCHAR(60) NULL DEFAULT NULL,
  `fecha_nac` DATE NULL DEFAULT NULL,
  `usuario` VARCHAR(6) NULL DEFAULT NULL,
  `correo` TINYTEXT NULL DEFAULT NULL,
  `contraseña` VARCHAR(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE INDEX `usuario` (`usuario` ASC),
  UNIQUE INDEX `contraseña` (`contraseña` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `meditec1`.`solicitud_cita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec1`.`solicitud_cita` (
  `idsolicitud cita` INT NOT NULL AUTO_INCREMENT,
  `hora` TIME NOT NULL,
  `fecha` DATE NOT NULL,
  `paciente_id_paciente` INT NOT NULL,
  PRIMARY KEY (`idsolicitud cita`),
  INDEX `fk_solicitud_cita_paciente_idx` (`paciente_id_paciente` ASC),
  CONSTRAINT `fk_solicitud_cita_paciente`
    FOREIGN KEY (`paciente_id_paciente`)
    REFERENCES `meditec1`.`paciente` (`id_paciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
