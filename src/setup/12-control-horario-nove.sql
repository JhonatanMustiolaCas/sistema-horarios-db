CREATE TABLE IF NOT EXISTS `DB_SISTEMA_HORARIOS`.`ControlHorario_Nove` (
    `CHN_Id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `CHN_EmpId` INT UNSIGNED NOT NULL,
    `CHN_InfracId` SMALLINT(3) UNSIGNED NOT NULL,
    `CHN_Fecha` DATE,
    `CHN_Horas` TINYINT(1) UNSIGNED,
    `CHN_Minutos` TINYINT(3) UNSIGNED,
    KEY `IDX_FK_CHN_Emp` (`CHN_EmpId`),
    KEY `IDX_FK_CHN_Infrac` (`CHN_InfracId`),
    CONSTRAINT `FK_CHN_Emp` FOREIGN KEY (`CHN_EmpId`) REFERENCES `Empleados` (`Emp_Id`),
    CONSTRAINT `FK_CHN_Infrac` FOREIGN KEY (`CHN_InfracId`) REFERENCES `Infracciones` (`Infrac_Id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
USE `DB_SISTEMA_HORARIOS`;
CREATE INDEX `IDX_Fecha` ON `ControlHorario_Nove` (`CHN_Fecha`);
CREATE INDEX `IDX_Emp` ON `ControlHorario_Nove` (`CHN_EmpId`);
CREATE INDEX `IDX_Fecha_Emp` ON `ControlHorario_Nove` (`CHN_Fecha`, `CHN_EmpId`);