DROP TABLE IF EXISTS `AP`.`AFDELING`;
-- 2
CREATE TABLE `tblOpleidingen` (
    `CODE` VARCHAR(10) PRIMARY KEY,
    `OMSCHRIJVING` MEDIUMTEXT,
    `DUUR` TINYINT UNSIGNED
);
-- 3
CREATE TABLE `tblAfdelingen` (
    `NR` SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `NAAM` VARCHAR(100),
    `REPLICATIONCODE` CHAR(36)
)  AUTO_INCREMENT=10;
-- 4
CREATE TABLE `tblMedewerkers` (
    `NR` SMALLINT PRIMARY KEY AUTO_INCREMENT,
    `NAAM` VARCHAR(100),
    `ADRES` VARCHAR(135),
    `AFDELINGNR` SMALLINT ,
    FOREIGN KEY (`AFDELINGNR`)
        REFERENCES `tblAfdelingen` (`NR`)
)  AUTO_INCREMENT=1;
-- 5
CREATE TABLE `tblGevolgdeOpleidingen` (
    `MEDEWERKERNR` SMALLINT PRIMARY KEY AUTO_INCREMENT,
    `OPLEIDINGSCODE` VARCHAR(10) UNIQUE,
    `DATUM` DATE,
    `VOLTOOID` BIGINT UNSIGNED,
    PRIMARY KEY(`MEDEWERKERNR`,`OPLEIDINGSCODE`,`DATUM`),
    FOREIGN KEY (`MEDERWERKER `) REFERENCES `TBLMEDERWERKER`(`ID`),
    FOREIGN KEY(`OPLEIDINGSCODE`) REFERENCES `TBLOPLEIDINGEN`(`CODE` )
);