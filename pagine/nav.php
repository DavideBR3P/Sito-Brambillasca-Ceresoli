<div class="nav">
    <div class="centratonav">
        <ul class="navlinks">
            <?php
                if (basename($_SERVER['PHP_SELF']) == "index.php") {
                    echo "<li><a href='pagine/login.php'>Login</a></li>";
                } elseif (basename($_SERVER['PHP_SELF']) == "login.php") {
                    echo "<li><a href='../index.php'>Registrati</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "filmcommedie.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "dune.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "filmd'avventura.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "filmdazione.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "Horror.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "filmromatici.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "lala.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "western.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "filmdrammatici.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                // }elseif (basename($_SERVER["PHP_SELF"]) == "wolf.php") {
                //     echo "<li><a href='../film.php'>Film</a></li>";
                } else {
                    
                    if (basename($_SERVER['PHP_SELF']) == "home.php") {
                        echo "<li id='active'>Home</li>";
                    } else {
                        echo "<li><a href='../pagine/home.php'>Home</a></li>";
                    }
                    if (basename($_SERVER['PHP_SELF']) == "../Film/film.php") {
                        echo "<li id='active'>Film</li>";
                    } else {
                        echo "<li><a href='../Film/film.php'>Film</a></li>";
                        
                    }
                    // if (basename($_SERVER['PHP_SELF']) == "Serie Tv/serie-tv.php") {
                    //     echo "<li id='active'>Serie Tv</li>";
                    // } else {
                    //     echo "<li><a href='Serie Tv/serie-tv.php'>Serie Tv</a></li>";
                    // }
                    // if (basename($_SERVER['PHP_SELF']) == "pagine/nuovi arrivi.php") {
                    //     echo "<li id='active'>Nuovi Arrivi</li>";
                    // } else {
                    //     echo "<li><a href='pagine/nuovi arrivi.php'>Nuovi Arrivi</a></li>";
                    // } 
                    // if (basename($_SERVER['PHP_SELF']) == "pagine/Grandi Classici.php") {
                    //     echo "<li id='active'>Grandi Classici</li>";
                    // } else {
                    //     echo "<li><a href='pagine/Grandi Classici.php'>Grandi Classici</a></li>";
                    // }
                    // if (basename($_SERVER['PHP_SELF']) == "pagine/da non perdere.php") {
                    //     echo "<li id='active'>Da Non Perdere</li>";
                    // } else {
                    //     echo "<li><a href='pagine/da non perdere.php'>Da Non Perdere</a></li>";
                    // }
                    if (basename($_SERVER['PHP_SELF']) == "contatti.php") {
                        echo "<li id='active'>Contatti</li>";
                    } else {
                        echo "<li><a href='../pagine/contatti.php'>Contatti</a></li>";
                    }
                    if (basename($_SERVER['PHP_SELF']) == "logout.php") {
                        echo "<li id='active'>Logout</li>";
                    } else {
                        echo "<li><a href='../pagine/logout.php'>Logout</a></li>";
                    }
                }
            ?>
        </ul>
    </div>
</div>