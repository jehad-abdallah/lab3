create database lab1;
CREATE TABLE IF NOT EXISTS `lab1`.`customer` (
  `id_customer` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `telephone` VARCHAR(15) NOT NULL,
  `address` TEXT NOT NULL,
  `date_of_birth` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`id_customer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `lab1`.`route_to_tour` (
  `id_route_to_tour` INT(11) NOT NULL AUTO_INCREMENT,
  `id_route` INT(11) NOT NULL,
  `id_voucher` INT(11) NOT NULL,
  PRIMARY KEY (`id_route_to_tour`),
  CONSTRAINT `route_to_tour_ibfk_1`
    FOREIGN KEY (`id_route_to_tour`)
    REFERENCES `lab1`.`voucher` (`id_voucher`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `lab1`.`tourist_route` (
  `id_route` INT(11) NOT NULL AUTO_INCREMENT,
  `duration` TEXT NOT NULL,
  `address_of_the_trip` TEXT NOT NULL,
  `cost` FLOAT NOT NULL,
  PRIMARY KEY (`id_route`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `lab1`.`voucher` (
  `id_voucher` INT(11) NOT NULL AUTO_INCREMENT,
  `id_customer` INT(11) NOT NULL,
  `cost` FLOAT NOT NULL,
  PRIMARY KEY (`id_voucher`),
  CONSTRAINT `voucher_ibfk_1`
    FOREIGN KEY (`id_voucher`)
    REFERENCES `lab1`.`customer` (`id_customer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


