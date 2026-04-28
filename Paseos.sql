
CREATE TABLE paseos (
idPaseo INT NOT NULL AUTO_INCREMENT,
fechaHoraInicio DATETIME,
fechaHoraFin DATETIME,
idMascota INT NOT NULL,
idPaseador INT NOT NULL,
PRIMARY KEY (idPaseo),
FOREIGN KEY (idMascota) REFERENCES mascotas(idMascota) ON DELETE CASCADE,
FOREIGN KEY (idPaseador) REFERENCES paseadores(idPaseador) ON DELETE CASCADE
);