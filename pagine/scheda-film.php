<?php
    if (!isset($_GET["Cod_Film"])) {
        die("Errore! manca un parametro essenziale per il caricamento del film!");
    } else {
        $Cod_Film = $_GET["Cod_Film"];
        require("../data/connessione_db.php");
        $sql = "SELECT film.Descrizione, film.Durata, film.Titolo, film.Data, film.Cod_Reg, film.copertina, attori.Nome, attori.Cognome, genere.Genere
                FROM film JOIN ha_recitato ON film.Cod_Film = ha_recitato.Cod_Film
                    JOIN attori ON attori.Cod_Attori =  ha_recitato.Cod_Attori
                              JOIN ha_come_genere ON film.Cod_Film = ha_come_genere.Cod_Film
                             JOIN genere ON genere.Cod_genere = ha_come_genere.Cod_Gen
                              JOIN prodotto_da ON film.Cod_Film = prodotto_da-Cod_Film
                             JOIN casa_di_produzione ON casa_di_produzione.Cod_CPRO = prodotto_da.Cod_CPRO
                WHERE Cod_film=2"; 
        $ris = $conn->query($sql) or die("<p>Query fallita!</p>");
        if ($ris->num_rows == 0) {
            die ("<p>Scheda film non trovata!</p>");
        } else {
            $riga = $ris->fetch_assoc();
            $Titolo = $riga['Titolo'];
            $Durata = $riga['Durata'];
            $Data = $riga["Data"];
            $copertina = $riga["copertina"];
            $Nome = $riga["Nome"];
            $Cognome = $riga["Cognome"];
            $Genere = $riga["Genere"];
            $Descrizione = $riga["Descrizione"];
        }
    }
?>


<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>The Film Review - Scheda Film</title>
	<link rel="stylesheet" type="text/css" href="../styleFilm.css">
</head>
<body>
	<?php require("nav.php");?>
	<div class="contenuto">
        
		<h1 style="text-align: center; margin-top: 0px"><?php echo $Titolo?></h1>
        <div class="copertina-fr">
            <?php
                echo "<img src='../immagini/$copertina' alt='$copertina'>";
            ?>
        </div>
		
	</div>
	<?php 
		require('footer.php');
	?>	
	
</body>
</html>
<?php
	$conn->close();
?>