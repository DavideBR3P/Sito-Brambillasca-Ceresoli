-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              10.4.28-MariaDB - mariadb.org binary distribution
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.5.0.6677
-- --------------------------------------------------------

-- Dump della struttura del database biblioteca
CREATE DATABASE IF NOT EXISTS `the-film-review` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `the-film-review`;

-- Dump della struttura di tabella biblioteca.autori
CREATE TABLE IF NOT EXISTS `autori` (
  `cod_autore` int(11) NOT NULL AUTO_INCREMENT,
  `cognome` char(50) DEFAULT NULL,
  `nome` char(50) DEFAULT NULL,
  PRIMARY KEY (`cod_autore`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dump dei dati della tabella biblioteca.autori: ~4 rows (circa)
INSERT INTO `autori` (`cod_autore`, `cognome`, `nome`) VALUES
	(1, 'Manzoni', 'Alessandro'),
	(2, 'Alighieri', 'Dante'),
	(3, 'Asimov', 'Isaac'),
	(4, 'Tolkien', 'J. R. R.');

-- Dump della struttura di tabella biblioteca.libri
CREATE TABLE IF NOT EXISTS `libri` (
  `cod_libro` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` char(50) DEFAULT NULL,
  `cod_autore` int(11) DEFAULT NULL,
  `username_utente` char(20) DEFAULT NULL,
  `copertina` char(255) DEFAULT NULL,
  `file_descrizione_md` char(255) NOT NULL DEFAULT '',
  `descrizione_txt` longtext NOT NULL DEFAULT '',
  PRIMARY KEY (`cod_libro`),
  KEY `FK_libri_utenti` (`username_utente`),
  KEY `FK_libri_autori` (`cod_autore`),
  CONSTRAINT `FK_libri_autori` FOREIGN KEY (`cod_autore`) REFERENCES `autori` (`cod_autore`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_libri_utenti` FOREIGN KEY (`username_utente`) REFERENCES `utenti` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dump dei dati della tabella biblioteca.libri: ~5 rows (circa)
INSERT INTO `libri` (`cod_libro`, `titolo`, `cod_autore`, `username_utente`, `copertina`, `file_descrizione_md`, `descrizione_txt`) VALUES
	(1, 'I promessi sposi', 1, 'asd', 'copertina-promessi-sposi.jpg', '', 'I promessi sposi sono un celebre romanzo storico di Alessandro Manzoni, ritenuto il più famoso e il più letto tra quelli scritti in lingua italiana. Preceduto dal Fermo e Lucia, spesso considerato romanzo a sé, fu pubblicato in una prima versione tra il 1825 e il 1827 (detta "ventisettana"); rivisto in seguito dallo stesso autore, soprattutto nel linguaggio, fu ripubblicato nella versione definitiva tra il 1840 e il 1842 (detta "quarantana").\r\n\r\nAmbientato tra il 1628 e il 1630 in Lombardia, durante il dominio spagnolo, fu il primo esempio di romanzo storico della letteratura italiana. Il romanzo si basa su una rigorosa ricerca storica e gli episodi del XVII secolo, come ad esempio le vicende della monaca di Monza (Marianna de Leyva y Marino) e la Grande Peste del 1629–1631, si fondano su documenti d\'archivio e cronache dell\'epoca. Il romanzo di Manzoni viene considerato non solo una pietra miliare della letteratura italiana - in quanto è il primo romanzo moderno di questa tradizione letteraria - ma anche un passaggio fondamentale nella nascita stessa della lingua italiana.\r\n\r\nI promessi sposi sono considerati l\'opera più rappresentativa del romanticismo italiano e una delle massime della letteratura italiana per la profondità dei temi (si pensi alla filosofia della storia in cui, cristianamente, opera l\'insondabile Grazia divina nella Provvidenza). Inoltre, per la prima volta in un romanzo di tale successo, i protagonisti sono gli umili e non i ricchi e i potenti della storia. Il romanzo, infine, per la sua popolarità presso il grande pubblico e per il vivace oggetto d\'interesse da parte della critica letteraria tra XIX e XX secolo, è stato rielaborato in forme artistiche che vanno dalla rappresentazione teatrale al cinema, dall\'opera lirica alla fumettistica.'),
	(2, 'Divina Commedia', 2, 'asd', 'copertina-divina-commedia.jpg', '', 'La Comedìa, o Commedia, conosciuta soprattutto come Divina Commedia, è un poema allegorico-didascalico di Dante Alighieri, scritto in terzine incatenate di endecasillabi (poi chiamate per antonomasia terzine dantesche) in lingua volgare fiorentina.\r\n\r\nIl titolo originale, con cui lo stesso autore designa il suo poema, fu Comedia (probabilmente pronunciata con accento tonico sulla i); e così è intitolata anche l\'editio princeps del 1472. L\'aggettivo «Divina» le fu attribuito dal Boccaccio nel Trattatello in laude di Dante, scritto fra il 1357 e il 1362 e stampato nel 1477. Ma è nella prestigiosa edizione giolitina, a cura di Ludovico Dolce e stampata da Gabriele Giolito de\' Ferrari nel 1555, che la Commedia di Dante viene per la prima volta intitolata come da allora fu sempre conosciuta, ovvero "La Divina Comedia".\r\n\r\nComposta secondo i critici tra il 1304/07 e il 1321, anni del suo esilio in Lunigiana e Romagna, la Commedia è il capolavoro di Dante ed è universalmente ritenuta una delle più grandi opere della letteratura di tutti i tempi, nonché una delle più importanti testimonianze della civiltà medievale, tanto da essere conosciuta e studiata in tutto il mondo.\r\n\r\nIl poema è diviso in tre parti, chiamate «cantiche» (Inferno, Purgatorio e Paradiso), ognuna delle quali composta da 33 canti (tranne l\'Inferno, che contiene un ulteriore canto proemiale) formati da un numero variabile di versi, fra 115 e 160, strutturati in terzine. Il poeta narra di un viaggio immaginario, ovvero di un Itinerarium mentis in Deum, attraverso i tre regni ultraterreni che lo condurrà fino alla visione della Trinità. La sua rappresentazione immaginaria e allegorica dell\'oltretomba cristiano è un culmine della visione medievale del mondo sviluppatasi nella Chiesa cattolica. È stato notato come tutte e tre le cantiche terminino con la parola «stelle» (Inferno: "E quindi uscimmo a riveder le stelle"; Purgatorio: "Puro e disposto a salir a le stelle"; Paradiso: "L\'amor che move il sole e l\'altre stelle").\r\n\r\nL\'opera ebbe subito uno straordinario successo e contribuì in maniera determinante al processo di consolidamento del dialetto toscano come lingua italiana. Il testo, del quale non si possiede l\'autografo, fu infatti copiato sin dai primissimi anni della sua diffusione e fino all\'avvento della stampa in un ampio numero di manoscritti. Parallelamente si diffuse la pratica della chiosa e del commento al testo (si calcolano circa sessanta commenti e tra le 100 000 e le 200 000 pagine), dando vita a una tradizione di letture e di studi danteschi mai interrotta: si parla così di "secolare commento". La vastità delle testimonianze manoscritte della Commedia ha comportato un\'oggettiva difficoltà nella definizione del testo: nella seconda metà del Novecento l\'edizione di riferimento è stata quella realizzata da Giorgio Petrocchi per la Società Dantesca Italiana. Più di recente due diverse edizioni critiche sono state curate da Antonio Lanza e Federico Sanguineti. A partire dal 2018, una nuova edizione critica basata sul codice Laurenziano Pluteo XL 12, definito «il più antico codice di sicura fiorentinità», è stata curata da Federico Sanguineti ed Eloisia Mandola.\r\n\r\nLa Commedia, pur proseguendo molti dei modi caratteristici della letteratura e dello stile medievali (ispirazione religiosa, scopo didascalico e morale, linguaggio e stile basati sulla percezione visiva e immediata delle cose), è profondamente innovativa poiché, come è stato rilevato in particolare negli studi di Erich Auerbach, tende a una rappresentazione ampia e drammatica della realtà, espressa anche con l\'uso di neologismi creati da Dante come «insusarsi», «inluiarsi» e «inleiarsi».'),
	(3, 'Abissi d\'acciaio', 1, 'asd', 'copertina-abissi-dacciaio.jpg', '', ''),
	(4, 'Il Signore degli Anelli', 4, 'asd', 'copertina-il-signore-degli-anelli.jpg', 'ilsignoredeglianelli.md', ''),
	(5, 'Il Silmarillion', 4, 'asd', 'copertina-silmarillion.jpg', '', '');

-- Dump della struttura di tabella biblioteca.utenti
CREATE TABLE IF NOT EXISTS `utenti` (
  `username` char(20) NOT NULL,
  `password` char(20) NOT NULL,
  `nome` char(20) DEFAULT NULL,
  `cognome` char(20) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `comune` char(20) DEFAULT NULL,
  `indirizzo` char(40) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='tabella contenente gli username e le rispettive password';

-- Dump dei dati della tabella biblioteca.utenti: ~2 rows (circa)
INSERT INTO `utenti` (`username`, `password`, `nome`, `cognome`, `email`, `telefono`, `comune`, `indirizzo`) VALUES
	('Achi11e', '1234', 'Francesco', 'Tormene', '', '', 'Vimercate', ''),
	('asd', 'asd', 'Mario', 'Rossi', 'mario.rossi@gmail.co', '123456789', 'Bergamo', 'Via Monza 2');


biblioteca`the film review`