-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.28-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database the film review
CREATE DATABASE IF NOT EXISTS `the film review` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `the film review`;

-- Dump della struttura di tabella the film review.attori
CREATE TABLE IF NOT EXISTS `attori` (
  `Cod_Attori` int(11) NOT NULL,
  `Nome` char(50) NOT NULL DEFAULT '',
  `Cognome` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Cod_Attori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.attori: ~9 rows (circa)
INSERT INTO `attori` (`Cod_Attori`, `Nome`, `Cognome`) VALUES
	(1, 'Leonardo', 'Di Caprio'),
	(2, 'Brad', 'Pitt'),
	(3, 'Francesco', 'Tormene'),
	(4, 'Timotee', 'Chaleme'),
	(5, 'Zeendaia', 'ze'),
	(6, 'Clint', 'Eastwood'),
	(7, 'Ryan', 'Goslin'),
	(8, 'John', 'Travolta'),
	(9, 'Ivo', 'Colombo');

-- Dump della struttura di tabella the film review.casa_di_produzione
CREATE TABLE IF NOT EXISTS `casa_di_produzione` (
  `Cod_CPRO` int(11) NOT NULL,
  `Nome` char(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_CPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.casa_di_produzione: ~5 rows (circa)
INSERT INTO `casa_di_produzione` (`Cod_CPRO`, `Nome`) VALUES
	(1, 'Columbia Pictures'),
	(2, 'liceo banfi'),
	(3, 'Dave producion'),
	(4, 'Sdrogo'),
	(5, 'Stallions');

-- Dump della struttura di tabella the film review.film
CREATE TABLE IF NOT EXISTS `film` (
  `Cod_Film` int(11) NOT NULL,
  `Titolo` char(50) NOT NULL DEFAULT '',
  `Data` date NOT NULL,
  `Durata` int(11) NOT NULL DEFAULT 0,
  `Descrizione` text DEFAULT NULL,
  `Cod_Reg` int(11) DEFAULT NULL,
  `Lingua Originale` char(50) DEFAULT NULL,
  `copertina` text DEFAULT NULL,
  `Trailer` text DEFAULT NULL,
  PRIMARY KEY (`Cod_Film`),
  KEY `FKCod-Reg` (`Cod_Reg`),
  CONSTRAINT `FKCod-Reg` FOREIGN KEY (`Cod_Reg`) REFERENCES `registri` (`Cod_Reg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.film: ~16 rows (circa)
INSERT INTO `film` (`Cod_Film`, `Titolo`, `Data`, `Durata`, `Descrizione`, `Cod_Reg`, `Lingua Originale`, `copertina`, `Trailer`) VALUES
	(0, '2001: oddisea nello spazio', '0000-00-00', 160, NULL, 3, 'inglese', 'Film D\'avventura/2001.jpg', 'https://www.youtube.com/watch?v=ivPu3t2j4Fg'),
	(1, 'C\'era una volta a hollywood', '2019-07-26', 180, NULL, 1, 'Inglese', 'Film Drammatici/c\'era una volta ad hollywood.jpg', 'https://www.youtube.com/watch?v=TLmHNBmzz84'),
	(2, 'Dune Parte 2', '0000-00-00', 162, NULL, 8, 'inglese', 'Film D\'avventura/Fa-Dune.jpg', 'https://www.youtube.com/watch?v=RD0-b7VO8F0'),
	(3, 'bullet train', '0000-00-00', 140, NULL, 8, 'inglese', 'Film D\'azione/bullet train.jpg', 'https://www.youtube.com/watch?v=71WbTzuO8jo'),
	(4, 'Forrest gump', '0000-00-00', 90, NULL, 3, 'inglese', 'Film commedia/forrest gump.jpg', 'https://www.youtube.com/watch?v=GKe68fGdNaw'),
	(5, 'Dune', '0000-00-00', 0, NULL, 6, 'inglese', 'Film D\'avventura/Dune.jpg', 'https://www.youtube.com/watch?v=SWbxKwlc1Vc'),
	(6, 'I Goonies', '0000-00-00', 0, NULL, 9, 'inglse', 'Film D\'avventura/i goonies.jpg', 'https://www.youtube.com/watch?v=kFj1KG_juuY'),
	(7, 'Avatar 2', '0000-00-00', 0, NULL, 3, 'inglese', 'Film D\'avventura/Avatar 2.jpg', 'https://www.youtube.com/watch?v=MLp7-KB-xdk'),
	(8, 'The batman', '0000-00-00', 0, NULL, 5, 'inglese', 'Film D\'azione/The batman.jpg', 'https://www.youtube.com/watch?v=JKjSqs5czLA'),
	(9, 'Kill Bill 2', '0000-00-00', 0, NULL, 1, 'inglese', 'Film D\'azione/kill bill2.jpg', NULL),
	(10, 'Kill Bill', '0000-00-00', 0, NULL, 1, 'inglese', 'Film D\'azione/kill bill.jpg', NULL),
	(11, 'La La Land', '0000-00-00', 0, NULL, 7, 'inglese', 'Film Romantici/la la land.jpg', NULL),
	(12, 'Grease', '0000-00-00', 0, NULL, 6, 'inglese', 'Film Romantici/grease.jpg', NULL),
	(13, 'Il Buono il Brutto e il Cattivo', '0000-00-00', 0, NULL, 2, 'spagnolo, italiano, inglese', 'Western/il buono il brutto e il cattivo.jpg', NULL),
	(14, 'The Wolf of Wall Street', '0000-00-00', 0, NULL, 1, 'inglese', 'Film drammatici/The Wolf of Street.jpg', NULL),
	(15, 'The Menu', '0000-00-00', 0, NULL, 9, 'inglese', 'film Horror/the menu.jpg', NULL);

-- Dump della struttura di tabella the film review.genere
CREATE TABLE IF NOT EXISTS `genere` (
  `Cod_genere` int(11) NOT NULL,
  `Genere` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Cod_genere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.genere: ~7 rows (circa)
INSERT INTO `genere` (`Cod_genere`, `Genere`) VALUES
	(1, 'Azione'),
	(2, 'Commedia'),
	(3, 'Dramma'),
	(4, 'Horror'),
	(5, 'Romanico'),
	(6, 'Western'),
	(7, 'Avventura');

-- Dump della struttura di tabella the film review.ha_come_genere
CREATE TABLE IF NOT EXISTS `ha_come_genere` (
  `Cod_Gen` int(11) NOT NULL,
  `Cod_Film` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Gen`,`Cod_Film`),
  KEY `FK_ha_come_genere_film` (`Cod_Film`),
  CONSTRAINT `FK_ha_come_genere_film` FOREIGN KEY (`Cod_Film`) REFERENCES `film` (`Cod_Film`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ha_come_genere_genere` FOREIGN KEY (`Cod_Gen`) REFERENCES `genere` (`Cod_genere`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.ha_come_genere: ~18 rows (circa)
INSERT INTO `ha_come_genere` (`Cod_Gen`, `Cod_Film`) VALUES
	(1, 1),
	(1, 8),
	(2, 1),
	(2, 4),
	(2, 6),
	(2, 11),
	(2, 14),
	(3, 14),
	(4, 8),
	(4, 15),
	(5, 11),
	(5, 12),
	(6, 13),
	(7, 0),
	(7, 2),
	(7, 3),
	(7, 5),
	(7, 7);

-- Dump della struttura di tabella the film review.ha_recitato
CREATE TABLE IF NOT EXISTS `ha_recitato` (
  `Cod_Attore` int(11) NOT NULL,
  `Cod_Film` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Attore`,`Cod_Film`),
  KEY `FKCod_Film` (`Cod_Film`),
  CONSTRAINT `FKCod_Attore` FOREIGN KEY (`Cod_Attore`) REFERENCES `attori` (`Cod_Attori`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKCod_Film` FOREIGN KEY (`Cod_Film`) REFERENCES `film` (`Cod_Film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.ha_recitato: ~9 rows (circa)
INSERT INTO `ha_recitato` (`Cod_Attore`, `Cod_Film`) VALUES
	(1, 1),
	(1, 5),
	(5, 5),
	(5, 7),
	(6, 7),
	(8, 1),
	(8, 12),
	(9, 3),
	(9, 7);

-- Dump della struttura di tabella the film review.prodotto_da
CREATE TABLE IF NOT EXISTS `prodotto_da` (
  `Cod_CPRO` int(11) NOT NULL,
  `Cod_Film` int(11) NOT NULL,
  PRIMARY KEY (`Cod_CPRO`,`Cod_Film`),
  KEY `FKFilm` (`Cod_Film`),
  CONSTRAINT `FKCPRO` FOREIGN KEY (`Cod_CPRO`) REFERENCES `casa_di_produzione` (`Cod_CPRO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKFilm` FOREIGN KEY (`Cod_Film`) REFERENCES `film` (`Cod_Film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.prodotto_da: ~11 rows (circa)
INSERT INTO `prodotto_da` (`Cod_CPRO`, `Cod_Film`) VALUES
	(1, 1),
	(1, 13),
	(2, 0),
	(2, 3),
	(2, 13),
	(3, 1),
	(3, 5),
	(3, 6),
	(5, 2),
	(5, 3),
	(5, 5);

-- Dump della struttura di tabella the film review.registri
CREATE TABLE IF NOT EXISTS `registri` (
  `Cod_Reg` int(11) NOT NULL,
  `Nome` char(50) NOT NULL DEFAULT '',
  `Cognome` char(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Reg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.registri: ~9 rows (circa)
INSERT INTO `registri` (`Cod_Reg`, `Nome`, `Cognome`) VALUES
	(1, 'Quentin', 'Tarantino'),
	(2, 'Christopher', 'Nolan'),
	(3, 'James', 'Cameron'),
	(4, 'Wes', ' Anderson'),
	(5, 'Matt', 'Reeves'),
	(6, 'Davide', 'Brambillasca'),
	(7, 'Veronica', 'Ceresoli'),
	(8, 'Kubric', 'Cubo'),
	(9, 'Steven', 'Spilberg');

-- Dump della struttura di tabella the film review.utente
CREATE TABLE IF NOT EXISTS `utente` (
  `username` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nome` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `cognome` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` tinytext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `telefono` char(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.utente: ~7 rows (circa)
INSERT INTO `utente` (`username`, `password`, `nome`, `cognome`, `email`, `telefono`) VALUES
	('asd', 'asd', 'asd', 'asd', 'asd', '7777'),
	('dac', 'dac', 'dac', 'dac', 'daca,', '8989'),
	('Dav', 'Dav', 'Dav', 'Dav', 'm', '8989'),
	('enea', 'ene', 'enea', 'fascilla', 'hghg', '17'),
	('hjH', 'ik', 'JHJ', 'jj', 'kklj', '88888'),
	('TheDave', 'Dave17', 'Davide', 'Brambillasca', 'davide.brambillasca@licebanfi.eu', 'o'),
	('Vero', 'Vero18', 'Veronica', 'Ceresoli', 'veronica.ceresoli@liceobanfi,eu', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
