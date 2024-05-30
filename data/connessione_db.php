<?php
    $conn = new mysqli("localhost", "root", "", "the-film-review");
    if($conn->connect_error){
        die("<p>Si è verificato un errore di connessione al database". $conn->connect_error."</p>");
    }
?>