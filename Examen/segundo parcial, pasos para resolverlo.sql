CREATE DATABASE IF NOT EXISTS segundoparcial;

USE segundoparcial;

CREATE TABLE jugadores(
idJugador INT(4) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR (50) NOT NULL,
dni INT(8),
edad TINYINT(4),
PRIMARY KEY(idJugador)
);

ALTER TABLE jugadores ADD(
domicilio VARCHAR(50)
);

SELECT * FROM jugadores;
DESCRIBE jugadores;


INSERT INTO jugadores 
VALUES 
('', 'Alex', 'Martel', 28654356, 40, 'Av.Libertador 343'),
('', 'Marcos', 'Galpex', 36345634, 28, 'Vidal 2865'),
('', 'Juliana', 'Agrua', 33456654, 32, 'Av.Santa Fe 221 4to A'),
('', 'Marco', 'Bell', 40345543, 22, 'Calle 45 343'),
('', 'Dalma', 'Canes', 30654276, 38, 'Monrroe 3321 1ro B');


CREATE TABLE fabricantes(
idFabricante INT(4) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
PRIMARY KEY(idFabricante)
);

CREATE TABLE juegos(
idJuego INT(4) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
fechaLanzamiento DATE NOT NULL,
maxJugadores INT(8),
idFabricante INT(4) NOT NULL,
PRIMARY KEY(idJuego)
);

SELECT * FROM fabricantes;
INSERT INTO fabricantes
VALUES
('', 'Square Enix'),
('', 'Rockstar Games'),
('', 'Polyphony Digital'),
('', 'Electronic Art');


INSERT INTO juegos
VALUES
('', 'UFC 4', '2020-08-14', 2, 4),
('', 'GTA 5', '2013-09-01', 1, 2),
('', 'Gran Turismo 6', '2013-12-06', 4, 3),
('', 'Max Payne 3', '2012-04-12, 1', 2),
('', 'Need for Speed Hot Pursuit', '2010-11-16', 2, 4);


SELECT nombre AS 'Nombre del juego',fechaLanzamiento AS 'Fecha de lanzamiento' FROM juegos
WHERE maxJugadores > 1 AND idFabricante = 4;

SELECT j.nombre AS 'Nombre del juego', f.nombre AS 'Nombre del fabricante'
  from juegos as j
  inner join fabricantes as f
  on j.idFabricante=f.idFabricante;


CREATE TABLE jugadas(
idJugador INT(4) NOT NULL,
idJuego INT(4) NOT NULL,
fechaHoraJugada DATETIME NOT NULL
);

INSERT INTO jugadas
VALUES
('1', '1', '2021-11-01 10:00:00'),
('1', '2', '2021-11-01 12:00:00'),
('3', '2', '2021-11-10 12:10:00'),
('2', '3', '2021-11-11 12:30:10'),
('1', '1', '2021-11-11 13:00:00'),
('3', '4', '2021-11-11 13:15:25'),
('3', '2', '2021-11-12 13:32:00'),
('1', '1', '2021-11-12 13:32:00'),
('4', '1', '2021-11-15 14:01:00'),
('2', '1', '2021-11-15 14:10:00'),
('1', '4', '2021-11-25 17:00:00');

SELECT * FROM jugadas;

SELECT COUNT(*) AS 'Cantidad de jugadas' FROM jugadas; 

SELECT * FROM jugadas WHERE idJuego = '1' AND fechaHoraJugada BETWEEN '2021-11-10 00:00:00' AND '2021-11-15 23:59:59';



SELECT j.nombre AS 'Nombre del Jugador', z.nombre AS 'Nombre del juego'
FROM jugadas AS k
INNER JOIN jugadores AS j
ON  k.idJugador = j.idJugador
INNER JOIN juegos AS z
ON k.idJuego = z.idJuego;



SELECT * FROM jugadores;


SELECT * FROM jugadores WHERE nombre LIKE 'M%';