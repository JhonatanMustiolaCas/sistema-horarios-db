CREATE TABLE IF NOT EXISTS `DB_SISTEMA_HORARIOS`.`Provincias` (
    `Provin_Id` MEDIUMINT(8) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Provin_PaisId` TINYINT(3) UNSIGNED NOT NULL,
    `Provin_Nombre` VARCHAR(60),
    KEY `IDX_FK_Provin_Pais` (`Provin_PaisId`),
    CONSTRAINT `FK_Provin_Pais` FOREIGN KEY (`Provin_PaisId`) REFERENCES `Paises` (`Pais_Id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;