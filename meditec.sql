-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema meditec
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema meditec
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `meditec` DEFAULT CHARACTER SET utf8 ;
USE `meditec` ;

-- -----------------------------------------------------
-- Table `meditec`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec`.`medico` (
  `id_medico` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(65) NOT NULL,
  `cedula_prof` VARCHAR(75) NULL,
  PRIMARY KEY (`id_medico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meditec`.`consultas_med`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec`.`consultas_med` (
  `idcitas_medic` INT NOT NULL AUTO_INCREMENT,
  `fecha_cita` DATETIME NOT NULL,
  `medico_id_medico` INT NOT NULL,
  PRIMARY KEY (`idcitas_medic`, `medico_id_medico`),
  INDEX `fk_consultas_med_medico1_idx` (`medico_id_medico` ASC) VISIBLE,
  CONSTRAINT `fk_consultas_med_medico1`
    FOREIGN KEY (`medico_id_medico`)
    REFERENCES `meditec`.`medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meditec`.`paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meditec`.`paciente` (
  `id_paciente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(65) NOT NULL,
  `genero` VARCHAR(45) NULL,
  `fecha_nac` VARCHAR(45) NULL,
  `estado_paciente` INT NULL,
  `consultas_med_idcitas_medic` INT NOT NULL,
  `medico_id_medico` INT NOT NULL,
  PRIMARY KEY (`id_paciente`),
  INDEX `fk_paciente_consultas_med_idx` (`consultas_med_idcitas_medic` ASC) VISIBLE,
  INDEX `fk_paciente_medico1_idx` (`medico_id_medico` ASC) VISIBLE,
  CONSTRAINT `fk_paciente_consultas_med`
    FOREIGN KEY (`consultas_med_idcitas_medic`)
    REFERENCES `meditec`.`consultas_med` (`idcitas_medic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_paciente_medico1`
    FOREIGN KEY (`medico_id_medico`)
    REFERENCES `meditec`.`medico` (`id_medico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
