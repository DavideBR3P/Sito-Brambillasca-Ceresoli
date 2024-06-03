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

-- Dump dei dati della tabella the film review.attori: ~1 rows (circa)
INSERT INTO `attori` (`Cod_Attori`, `Nome`, `Cognome`) VALUES
	(1, 'Leonardo', 'Di Caprio');

-- Dump della struttura di tabella the film review.casa_di_produzione
CREATE TABLE IF NOT EXISTS `casa_di_produzione` (
  `Cod_CPRO` int(11) NOT NULL,
  `Nome` char(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_CPRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.casa_di_produzione: ~1 rows (circa)
INSERT INTO `casa_di_produzione` (`Cod_CPRO`, `Nome`) VALUES
	(1, 'Columbia Pictures');

-- Dump della struttura di tabella the film review.film
CREATE TABLE IF NOT EXISTS `film` (
  `Cod_Film` int(11) NOT NULL,
  `Titolo` char(50) NOT NULL DEFAULT '',
  `Data` date NOT NULL,
  `Durata` time NOT NULL,
  `Descrizione` text DEFAULT NULL,
  `Cod_Reg` int(11) DEFAULT NULL,
  `Lingua Originale` char(50) DEFAULT NULL,
  `copertina` text DEFAULT NULL,
  PRIMARY KEY (`Cod_Film`),
  KEY `FKCod-Reg` (`Cod_Reg`),
  CONSTRAINT `FKCod-Reg` FOREIGN KEY (`Cod_Reg`) REFERENCES `registri` (`Cod_Reg`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.film: ~2 rows (circa)
INSERT INTO `film` (`Cod_Film`, `Titolo`, `Data`, `Durata`, `Descrizione`, `Cod_Reg`, `Lingua Originale`, `copertina`) VALUES
	(1, 'C\'era una volta a hollywood', '2019-07-26', '02:41:00', NULL, 1, 'Inglese', NULL),
	(2, 'Dune Parte 2', '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL);

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

-- Dump dei dati della tabella the film review.ha_come_genere: ~2 rows (circa)
INSERT INTO `ha_come_genere` (`Cod_Gen`, `Cod_Film`) VALUES
	(1, 1),
	(3, 1);

-- Dump della struttura di tabella the film review.ha_recitato
CREATE TABLE IF NOT EXISTS `ha_recitato` (
  `Cod_Attore` int(11) NOT NULL,
  `Cod_Film` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Attore`,`Cod_Film`),
  KEY `FKCod_Film` (`Cod_Film`),
  CONSTRAINT `FKCod_Attore` FOREIGN KEY (`Cod_Attore`) REFERENCES `attori` (`Cod_Attori`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKCod_Film` FOREIGN KEY (`Cod_Film`) REFERENCES `film` (`Cod_Film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.ha_recitato: ~1 rows (circa)
INSERT INTO `ha_recitato` (`Cod_Attore`, `Cod_Film`) VALUES
	(1, 1);

-- Dump della struttura di tabella the film review.prodotto_da
CREATE TABLE IF NOT EXISTS `prodotto_da` (
  `Cod_CPRO` int(11) NOT NULL,
  `Cod_Film` int(11) NOT NULL,
  PRIMARY KEY (`Cod_CPRO`,`Cod_Film`),
  KEY `FKFilm` (`Cod_Film`),
  CONSTRAINT `FKCPRO` FOREIGN KEY (`Cod_CPRO`) REFERENCES `casa_di_produzione` (`Cod_CPRO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKFilm` FOREIGN KEY (`Cod_Film`) REFERENCES `film` (`Cod_Film`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.prodotto_da: ~1 rows (circa)
INSERT INTO `prodotto_da` (`Cod_CPRO`, `Cod_Film`) VALUES
	(1, 1);

-- Dump della struttura di tabella the film review.registri
CREATE TABLE IF NOT EXISTS `registri` (
  `Cod_Reg` int(11) NOT NULL,
  `Nome` char(50) NOT NULL DEFAULT '',
  `Cognome` char(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_Reg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dump dei dati della tabella the film review.registri: ~4 rows (circa)
INSERT INTO `registri` (`Cod_Reg`, `Nome`, `Cognome`) VALUES
	(1, 'Quentin', 'Tarantino'),
	(2, 'Christopher', 'Nolan'),
	(3, 'James', 'Cameron'),
	(4, 'Wes', ' Anderson');

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

-- Dump dei dati della tabella the film review.utente: ~6 rows (circa)
INSERT INTO `utente` (`username`, `password`, `nome`, `cognome`, `email`, `telefono`) VALUES
	('asd', 'asd', 'asd', 'asd', 'asd', '7777'),
	('dac', 'dac', 'dac', 'dac', 'daca,', '8989'),
	('Dav', 'Dav', 'Dav', 'Dav', 'm', '8989'),
	('hjH', 'ik', 'JHJ', 'jj', 'kklj', '88888'),
	('TheDave', 'Dave17', 'Davide', 'Brambillasca', 'davide.brambillasca@licebanfi.eu', 'o'),
	('Vero', 'Vero18', 'Veronica', 'Ceresoli', 'veronica.ceresoli@liceobanfi,eu', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
