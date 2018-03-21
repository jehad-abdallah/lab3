CREATE DATABASE medicine;
show databases;
use medicine;
show tables;
describe company;
DROP TABLE IF exists company;
CREATE TABLE IF NOT EXISTS company(
`id_company` INT(11) NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
year DATE NULL DEFAULT NULL,
PRIMARY KEY (`id_company`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

describe DEALER;
DROP TABLE IF exists dealer;
CREATE TABLE IF NOT EXISTS dealer(
id_dealer INT(11) NOT NULL AUTO_INCREMENT,
id_company INT(11) NOT NULL,
surname VARCHAR(255) NOT NULL,
telephone INT(15) default NULL,
PRIMARY KEY (`id_dealer`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

describe medication;
DROP TABLE IF exists medication;
CREATE TABLE IF NOT EXISTS medication(
id_medication INT(11) NOT NULL AUTO_INCREMENT,
name_of_medication VARCHAR(255) NOT NULL,
term DATE NULL NOT NULL,
PRIMARY KEY (`id_medication`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

describe pharmacy;
DROP TABLE IF exists pharmacy;
CREATE TABLE IF NOT EXISTS pharmacy(
id_pharmacy INT(11) NOT NULL AUTO_INCREMENT,
name_of_pharmacy VARCHAR(255) NOT NULL,
address VARCHAR(1000) NOT NULL,
PRIMARY KEY (`id_pharmacy`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

describe manufacture_of_medicine;
DROP TABLE IF exists manufacture_of_medicine;
CREATE TABLE IF NOT EXISTS manufacture_of_medicine(
id_manufacture_of_medicine INT(11) NOT NULL AUTO_INCREMENT,
id_company INT(11) NOT NULL,
id_medicine INT(11) NOT NULL,
cost FLOAT NOT NULL,
ball tinyint(1) DEFAULT NULL,
PRIMARY KEY (`id_manufacture_of_medicine`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

describe booking;
DROP TABLE IF exists booking;
CREATE TABLE IF NOT EXISTS booking(
id_booking INT(11) NOT NULL AUTO_INCREMENT,
id_manufacture_of_medicine INT(11) NOT NULL,
id_dealer INT(11) NOT NULL,
id_pharmacy INT(11) NOT NULL,
address varchar(1000) NOT NULL,
quantity VARCHAR(255) NOT NULL,
PRIMARY KEY (`id_booking`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

