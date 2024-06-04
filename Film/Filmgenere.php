<?php
   if(!isset($_GET["Genere"])){
    header("film.php");
   }
   $genere=$_GET["Genere"];
?>


<html>
    <head >
        <title>Film Genere</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
        <link rel="stylesheet" href="../CSS/style.css">
        <script src="../JAVA/script.js" defer></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">    
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    </head>
    <body>
        <?php
        require("../pagine/nav.php");
        ?>
        <div class="contenitore-g">
            <header class="header clearfix">
                <a href="" class="header_logo"><img src="../../logor.jpg"></a>
                <a href="" class="header_bar">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
    
                <!-- <ul class="header_menu animate">
                    <li class="header_menu_item"><a href="../../home.html">Home</a></li>
                    <li class="header_menu_item"><a href="../film.html">Film</a></li>
                    <li class="header_menu_item"><a href="../../Serie Tv/serie-tv.html">Serie Tv</a></li>
                    <li class="header_menu_item"><a href="../../Altre Pag.html/nuovi arrivi.html">Nuovi Arrivi</a></li>
                    <li class="header_menu_item"><a href="../../Altre Pag.html/Grandi Classici.html">Grandi Classici</a></li>
                    <li class="header_menu_item"><a href="../../Altre Pag.html/da non perdere.html">Da non perdere</a></li>
                    <li class="header_menu_item"><a href="../../Altre Pag.html/contatti.html">Contatti</a></li>
                </ul> -->
            </header>
            <?php
            require("../data/connessione_db.php");
            $query= "SELECT DISTINCT * FROM film JOIN ha_come_genere ON film.Cod_Film=ha_come_genere.Cod_Film JOIN genere ON genere.Cod_genere=ha_come_genere.Cod_Gen 
            WHERE ha_come_genere.Cod_Gen=$genere";
            $ris=mysqli_query($conn,$query);
            echo <<<EOD
                <div class="grid-immagini">
                    <ul class="galleria">
            EOD;
            foreach($ris as $film){
                $titolo=$film['Titolo'];
                $copertina=$film['copertina'];
                echo <<<EOD
                <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/$copertina">
                               <figcaption>$titolo</figcaption>
                           </figure>
                        </a>
                    </li>
                EOD;
            }
            






            // if($cod_gen==[1])
            // {
            //     echo <<< EOD
            //     <div class="grid-immagini">
            //     <ul class="galleria">
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/il padrino.jpg">
            //                     <figcaption>Il padrino</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/il padrino 2.jpg">
            //                     <figcaption>Il padrino 2</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/The Wolf of Street.jpg">
            //                     <figcaption>The Wolf of Wall Street</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/Pulp fiction.jpg">
            //                     <figcaption>Pulp fiction</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/oppenheimer.jpg">
            //                     <figcaption>Oppenheimer</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/scarface-1983-poster.avif">
            //                     <figcaption>Scarface</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/povere creature.webp">
            //                     <figcaption>Povere creature</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/la-dolce-vita-1960-poster.avif">
            //                     <figcaption>La Dolce Vita</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/rocky.jpg">
            //                     <figcaption>Rocky</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/rocky 2.jpg">
            //                     <figcaption>Rocky 2</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/rocky-3-vintage-movie-poster-original-40x60.webp">
            //                     <figcaption>Rocky 3</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/Rocky IV.jpg">
            //                     <figcaption>Rocky 4</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/joker.jpg">
            //                     <figcaption>JOKER</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/the Iron claw.jpg">
            //                     <figcaption>The Iron claw</figcaption>
            //                 </figure>
            //             </a>
            //         </li>
            //         <li class="card-item">
            //             <a href="#">
            //                 <figure class="card">
            //                     <img src="../../immagini/Film/Film Drammatici/taxi driver.jpg">
            //                     <figcaption>Taxi Driver</figcaption>
            //                 </figure>
            //             </a>
            //         </li>

                
            //     </ul>
            // </div>
                
            // EOD;
            // }
            ?>

            <!-- <div class="grid-immagini">
                <ul class="galleria">
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/il padrino.jpg">
                                <figcaption>Il padrino</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/il padrino 2.jpg">
                                <figcaption>Il padrino 2</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/The Wolf of Street.jpg">
                                <figcaption>The Wolf of Wall Street</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/Pulp fiction.jpg">
                                <figcaption>Pulp fiction</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/oppenheimer.jpg">
                                <figcaption>Oppenheimer</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/scarface-1983-poster.avif">
                                <figcaption>Scarface</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/povere creature.webp">
                                <figcaption>Povere creature</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/la-dolce-vita-1960-poster.avif">
                                <figcaption>La Dolce Vita</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/rocky.jpg">
                                <figcaption>Rocky</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/rocky 2.jpg">
                                <figcaption>Rocky 2</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/rocky-3-vintage-movie-poster-original-40x60.webp">
                                <figcaption>Rocky 3</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/Rocky IV.jpg">
                                <figcaption>Rocky 4</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/joker.jpg">
                                <figcaption>JOKER</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/the Iron claw.jpg">
                                <figcaption>The Iron claw</figcaption>
                            </figure>
                        </a>
                    </li>
                    <li class="card-item">
                        <a href="#">
                            <figure class="card">
                                <img src="../../immagini/Film/Film Drammatici/taxi driver.jpg">
                                <figcaption>Taxi Driver</figcaption>
                            </figure>
                        </a>
                    </li>

                
                </ul>
            </div>
        </div> -->
        
        <!-- <footer>
            <div class="footer"><br>&copy; 2024 </br>
              <br> Lavoro realizzato da Brambillasca Davide e Contini Federico</br>  
              <br> The Film Review All rights reserved.</br></div>
        </footer> -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".header_bar").click(function(e){
                $(".header_menu").toggleClass('is-open');
                e.preventDefault();

            });

        });

    </script>
    <?php
    require("../pagine/footer.php");
    ?>


    </body>
</html>