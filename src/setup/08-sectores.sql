CREATE TABLE IF NOT EXISTS `DB_SISTEMA_HORARIOS`.`Sectores` (
    `Sector_Id` SMALLINT(3) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Sector_Nombre` VARCHAR(60)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;