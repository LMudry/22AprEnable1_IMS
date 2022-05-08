drop schema ims;

CREATE SCHEMA IF NOT EXISTS `ims`;

USE `ims` ;

CREATE TABLE IF NOT EXISTS `ims`.`customers` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(40) DEFAULT NULL,
    `surname` VARCHAR(40) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `ims`.`items` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `itemName` VARCHAR(40) DEFAULT NULL,
    `itemPrice` VARCHAR(10) DEFAULT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `ims`.`orders` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `customers_id` INT NULL,
    PRIMARY KEY (`id`),
     CONSTRAINT `customers_id`
    FOREIGN KEY (`customers_id`)
    REFERENCES `test`.`customers` (`id`)
);

CREATE TABLE `ims`.`orders_items` (
  `idordders_items` INT NOT NULL,
  `orders_id` INT NULL,
  `items_id` INT NULL,
  PRIMARY KEY (`idordders_items`),
  CONSTRAINT `orders_id`
    FOREIGN KEY (`orders_id`)
    REFERENCES `test`.`orders` (`id`),
   CONSTRAINT `items_id`
    FOREIGN KEY (`items_id`)
    REFERENCES `test`.`items` (`id`)
);