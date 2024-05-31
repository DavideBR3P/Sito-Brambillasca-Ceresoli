<?php
    if (!isset($_GET["cod_libro"])) {
        die("Errore! manca un parametro essenziale per il caricamento del libro!");
    } else {
        $cod_libro = $_GET["cod_libro"];
        require("../data/connessione_db.php");
        // $sql = "SELECT libri.cod_libro, libri.titolo, libri.copertina, libri.descrizione_txt, autori.nome, autori.cognome 
        //         FROM utenti JOIN libri ON utenti.username = libri.username_utente 
        //                     JOIN autori ON libri.cod_autore = autori.cod_autore  
        //         WHERE cod_libro=$cod_libro"; // qui non vanno le ' ' intorno a $cod_libro perchè è un numero
        $ris = $conn->query($sql) or die("<p>Query fallita!</p>");
        // if ($ris->num_rows == 0) {
        //     // decidere che cosa fare
        //     die ("Libro non trovato!");
        // } else {
        //     $riga = $ris->fetch_assoc();
        //     $titolo = $riga['titolo'];
        //     $descrizione_txt = $riga['descrizione_txt'];
        //     $nome = $riga["nome"];
        //     $cognome = $riga["cognome"];
        //     $copertina = $riga["copertina"];
        // }
    }
?>


<!DOCTYPE html>
<html lang="it">
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Biblioteca - Scheda Libro</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
	<?php require("nav.php");?>
	<div class="contenuto">
        
		<h1 style="text-align: center; margin-top: 0px"><?php echo $titolo?></h1>
        <div class="copertina-fr">
            <?php
                echo "<img src='../immagini/$copertina' alt='$copertina'>";
            ?>
        </div>
        <div class="descrizione">
            <?php
                // codice per dividere il testo in paragrafi
                $paragrafi = explode("\n", $descrizione_txt);
                foreach ($paragrafi as $paragrafo) {
                    echo "<p>$paragrafo</p>";
                }
                // echo "$descrizione_txt"; // solo per vedere se no come sarebbe venuto senza dividere in paragrafi
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