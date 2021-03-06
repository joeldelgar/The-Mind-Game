DROP DATABASE IF EXISTS  bd;
CREATE DATABASE bd;

USE bd;

CREATE TABLE Jugador(
   ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   Usuario VARCHAR(50) NOT NULL UNIQUE, 
   Psw VARCHAR(50),
   Puntos INT

)ENGINE=InnoDB;

CREATE TABLE Partida(
   ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
   Data VARCHAR(50),
   Time INT,
   Winner INT

)ENGINE=InnoDB;

CREATE TABLE Participantes(
   ID_J INT NOT NULL,
   ID_P INT NOT NULL,
   FOREIGN KEY (ID_J) REFERENCES Jugador(ID) ON DELETE CASCADE,
   FOREIGN KEY (ID_P) REFERENCES Partida(ID) ON DELETE CASCADE

)ENGINE=InnoDB;

INSERT INTO Jugador VALUES (NULL,'Joel', 'Delgar24',0);
INSERT INTO Jugador VALUES (NULL,'Julia', 'pumpkin',0);
INSERT INTO Jugador VALUES (NULL,'Fran', '1234a5b',0);

INSERT INTO Partida VALUES (NULL,'13-10-20 17:23:00', 20, 0);
INSERT INTO Partida VALUES (NULL,'13-10-20 17:50:23', 15, 0);
INSERT INTO Partida VALUES (NULL,'13-10-20 18:34:45', 19, 0);
INSERT INTO Partida VALUES (NULL,'13-10-20 18:34:45', 19, 1);

INSERT INTO Participantes VALUES (1, 1);
INSERT INTO Participantes VALUES (3, 1);
INSERT INTO Participantes VALUES (1, 2);
INSERT INTO Participantes VALUES (2, 2);
INSERT INTO Participantes VALUES (3, 2);
INSERT INTO Participantes VALUES (2, 3);
INSERT INTO Participantes VALUES (1, 3);
INSERT INTO Participantes VALUES (1, 3);

SELECT * FROM Jugador;
SELECT * FROM Partida;
SELECT * FROM Participantes;

