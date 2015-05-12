-- MySQL Script generated by MySQL Workbench
-- 05/05/15 11:55:41
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema zrecommender
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zrecommender` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `zrecommender` ;

-- -----------------------------------------------------
-- Table `zrecommender`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zrecommender`.`movie` (
  `id` BIGINT NOT NULL,
  `title` VARCHAR(200) NULL,
  `genres` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zrecommender`.`movie_similarity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zrecommender`.`movie_similarity` (
  `movie_id1` BIGINT NULL,
  `movie_id2` BIGINT NULL,
  `similarity` DECIMAL(64,20) NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
