/* cCreación Tabla Mascotas */
/* Me falto Agregar la llave foranea id cliente */
CREATE TABLE `mascotas` (
	`idmascota` INT(11) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(20) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`raza` VARCHAR(20) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
	`edad` INT(3) NOT NULL,
	PRIMARY KEY (`idmascota`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;
