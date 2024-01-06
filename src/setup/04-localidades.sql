CREATE TABLE IF NOT EXISTS `DB_SISTEMA_HORARIOS`.`Localidades` (
    `Local_Id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Local_ProvinId` MEDIUMINT(8) UNSIGNED NOT NULL,
    `Local_Nombre` VARCHAR(100),
    KEY `IDX_FK_Local_ProvinId` (`Local_ProvinId`),
    CONSTRAINT `FK_Local_ProvinId` FOREIGN KEY (`Local_ProvinId`) REFERENCES `Provincias` (`Provin_Id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;