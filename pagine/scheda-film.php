<?php
    if (!isset($_GET["Cod_Film"])) {
        die("Errore! manca un parametro essenziale per il caricamento del libro!");
    } else {
        $Cod_Film = $_GET["Cod_Film"];
        require("../data/connessione_db.php");
        $sql = "SELECT film.Cod_Film, film.Descrizione, film.Durata, film.Titolo, film.Data, film.Cod_Reg, film.copertina, attori.Cod_Attori, attori.Nome, attori.Cognome, genere.Cod_genere, genere.Genere
                FROM film JOIN attori ON film.Cod_Film = attori.Cod_Film
                            JOIN genere ON film.Cod_Film = genere.Cod_Film  
                WHERE Cod_film=$Cod_Film"; 
        $ris = $conn->query($sql) or die("<p>Query fallita!</p>");
        if ($ris->num_rows == 0) {
            die ("<p>Scheda libro non trovata!</p>");
        } else {
            $riga = $ris->fetch_assoc();
            $Titolo = $riga['Titolo'];
            $Durata = $riga['Durata'];
            $Data = $riga["Data"];
            $Cod_Reg = $riga["Cod_Reg"];
            $copertina = $riga["copertina"];
            $Cod_Attori = $riga["Cod_Attori"];
            $Nome = $riga["Nome"];
            $Cognome = $riga["Cognome"];
            $Cod_genere = $riga["Cod_genere"];
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
        <div class="descrizione">
            <?php
                $paragrafi = explode("\n", $$Descrizione);
                foreach ($paragrafi as $paragrafo) {
                    echo "<p>$paragrafo</p>";
                }
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