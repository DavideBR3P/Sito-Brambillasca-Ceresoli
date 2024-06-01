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

-- Dump dei dati della tabella the film review.attori: ~1 rows (circa)
INSERT INTO `attori` (`Cod_Attori`, `Nome`, `Cognome`) VALUES
	(1, 'Leonardo', 'Di Caprio');

-- Dump dei dati della tabella the film review.casa_di_produzione: ~1 rows (circa)
INSERT INTO `casa_di_produzione` (`Cod_CPRO`, `Nome`) VALUES
	(1, 'Columbia Pictures');

-- Dump dei dati della tabella the film review.film: ~2 rows (circa)
INSERT INTO `film` (`Cod_Film`, `Titolo`, `Data`, `Durata`, `Descrizione`, `Cod_Reg`, `Lingua Originale`) VALUES
	(1, 'C\'era una volta a hollywood', '2019-07-26', '02:41:00', NULL, 1, 'Inglese'),
	(2, 'Dune Parte 2', '0000-00-00', '00:00:00', NULL, NULL, NULL);

-- Dump dei dati della tabella the film review.genere: ~7 rows (circa)
INSERT INTO `genere` (`Cod_genere`, `Genere`) VALUES
	(1, 'Azione'),
	(2, 'Commedia'),
	(3, 'Dramma'),
	(4, 'Horror'),
	(5, 'Romanico'),
	(6, 'Western'),
	(7, 'Avventura');

-- Dump dei dati della tabella the film review.ha_come_genere: ~2 rows (circa)
INSERT INTO `ha_come_genere` (`Cod_Gen`, `Cod_Film`) VALUES
	(1, 1),
	(3, 1);

-- Dump dei dati della tabella the film review.ha_recitato: ~1 rows (circa)
INSERT INTO `ha_recitato` (`Cod_Attore`, `Cod_Film`) VALUES
	(1, 1);

-- Dump dei dati della tabella the film review.prodotto_da: ~1 rows (circa)
INSERT INTO `prodotto_da` (`Cod_CPRO`, `Cod_Film`) VALUES
	(1, 1);

-- Dump dei dati della tabella the film review.registri: ~4 rows (circa)
INSERT INTO `registri` (`Cod_Reg`, `Nome`, `Cognome`) VALUES
	(1, 'Quentin', 'Tarantino'),
	(2, 'Christopher', 'Nolan'),
	(3, 'James', 'Cameron'),
	(4, 'Wes', ' Anderson');

-- Dump dei dati della tabella the film review.utente: ~2 rows (circa)
INSERT INTO `utente` (`username`, `password`, `nome`, `cognome`, `email`, `telefono`) VALUES
	('TheDave', 'Dave17', 'Davide', 'Brambillasca', 'davide.brambillasca@licebanfi.eu', 'o'),
	('Vero', 'Vero18', 'Veronica', 'Ceresoli', 'veronica.ceresoli@liceobanfi,eu', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
