-- MySQL Script generated by MySQL Workbench
-- 06/12/16 10:59:20
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`categories` ;

CREATE TABLE IF NOT EXISTS `mydb`.`categories` (
  `idcategories` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategories`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`products` ;

CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `idproducts` INT NOT NULL,
  `product` VARCHAR(200) NULL,
  `categories_idcategories` INT NOT NULL,
  PRIMARY KEY (`idproducts`, `categories_idcategories`),
  INDEX `fk_products_categories_idx` (`categories_idcategories` ASC),
  CONSTRAINT `fk_products_categories`
    FOREIGN KEY (`categories_idcategories`)
    REFERENCES `mydb`.`categories` (`idcategories`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`categories`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`categories` (`idcategories`, `name`) VALUES (1, 'Laptops');
INSERT INTO `mydb`.`categories` (`idcategories`, `name`) VALUES (2, 'Phones');
INSERT INTO `mydb`.`categories` (`idcategories`, `name`) VALUES (3, 'Memory');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`products`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (1, 'Lenovo IdeaPad G50-80 cu procesor Intel® Core™ i3-4005U 1.70GHz, Haswell™, 15.6\", 4GB, 1TB, DVD-RW, AMD Radeon™ R5 M330 2GB, Free DOS, Black', 1);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (2, 'ASUS X540SA-XX005D cu procesor Intel® Celeron® Quad Core™ N3150 1.60GHz, Braswell, 15.6\", 4GB, 500GB, DVD-RW, Free DOS, Chocolate Black', 1);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (3, 'HP 250 G4 cu procesor Intel® Celeron® N3050 1.6GHz, 15.6\", 4GB, 500GB, DVD-RW, Intel® HD Graphics, Free DOS, Black', 1);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (4, 'Samsung GALAXY S7, 32GB, 4G, Black', 2);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (5, 'Apple iPhone 6S, 16GB, Space Gray', 2);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (6, 'Apple iPhone 6, 64GB, Space Gray', 2);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (7, 'Allview P8 Energy Pro, Dual SIM, 64GB, 4G,Gold', 2);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (8, 'Allview P6 Pro, Dual SIM, 8GB, 4G, Black', 2);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (9, 'HyperX FURY Blue 4GB, DDR3, 1600MHz, CL10, 1.5V', 3);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (10, 'Kingston 2GB DDR2-800 PC6400 CL6 ValueRam', 3);
INSERT INTO `mydb`.`products` (`idproducts`, `product`, `categories_idcategories`) VALUES (11, 'Zeppelin 4GB, DDR3, 1333MHz, Non-ECC', 3);

COMMIT;

