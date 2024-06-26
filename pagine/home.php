<html>
    <head >
        <meta charset="UTF-8" />
        <title>The Film Review</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
        <link rel="stylesheet" href="../CSS/styler.css">
        <link rel="stylesheet" href="../CSS/style_nav.css">
        <script src="../JAVA/script.js" defer></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">    
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
    <?php require("nav.php");?> 
        <div class="contenitore-g">
            <header class="header clearfix">
                <a href="" class="header_logo"><img src="../logor.jpg"></a>
                <a href="" class="header_bar">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>

                 <!-- <ul class="header_menu animate">
                    <li class="header_menu_item"><a href="Film/film.php">Film</a></li>
                    <li class="header_menu_item"><a href="Serie Tv/serie-tv.php">Serie Tv</a></li>
                    <li class="header_menu_item"><a href="Altre Pag.html/nuovi arrivi.php">Nuovi Arrivi</a></li>
                    <li class="header_menu_item"><a href="Altre Pag.html/Grandi Classici.php">Grandi Classici</a></li>
                    <li class="header_menu_item"><a href="Altre Pag.html/da non perdere.php">Da non perdere</a></li>
                    <li class="header_menu_item"><a href="Altre Pag.html/contatti.php">Contatti</a></li>
                </ul>  -->
            </header> 
            <div class="slide">
                <div class="slider-wrapper">
                  <button id="prev-slide" class="slide-button material-symbols-rounded">    
                  </button>
                  <?php
                    require("../data/connessione_db.php");
                    $query= "SELECT * FROM film ";
                    $ris=mysqli_query($conn,$query);
                    echo <<<EOD
                      <div class="slide">
                        <div class="slider-wrapper">
                          <button id="prev-slide" class="slide-button material-symbols-rounded">
                          </button>
                        <ul class="image-list">
                    EOD;
                    foreach($ris as $film){
                        $copertina=$film['copertina'];
                        echo <<<EOD
                        <img class="image-item" src="../immagini/Film/$copertina">
                        EOD;
                    }
                    echo <<<EOD
                      <button id="next-slide" class="slide-button material-symbols-rounded">
                      </button>
                      </div>
                    <div class="slider-scrollbar">
                      <div class="scrollbar-track">
                        <div class="scrollbar-thumb"></div>
                      </div>
                    </div>
                    EOD;
                    ?>

                  <!-- <ul class="image-list">
                    <img class="image-item" src="../immagini/Film/Film D'azione/beekeeper.jpg"  />
                    <img class="image-item" src="../immagini/Film/film Horror/il silenzio degli innocent i.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film Drammatici/c'era una volta ad hollywood.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film commedia/forrest gump.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film D'azione/fight club.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film Drammatici/the Iron claw.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film commedia/il gande lebowski.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film Drammatici/joker.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film Drammatici/oppenheimer.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film D'azione/bullet train.jpg"  />
                    <img class="image-item" src="../immagini/Film/Film D'azione/mad max.jpg"  />
                    <img class="image-item" src="../immagini/Film/film Horror/the whale.jpg"  />
                    <img class="image-item" src="../immagini/Film/Western/django.jpg"  />
                    
                    
                    
                  </ul> -->
                  <!-- <button id="next-slide" class="slide-button material-symbols-rounded">
                    
                  </button>
                </div>
                <div class="slider-scrollbar">
                  <div class="scrollbar-track">
                    <div class="scrollbar-thumb"></div>
                  </div>
                </div>
            </div> -->

            <h1>I <span></span> Preferiti</h1>
            
            <?php
            require("../data/connessione_db.php");

            echo <<<EOD

            <div class="container">
                <div class="movie-cards">
                  <div class="card">
                    <a href="scheda-film.php?Cod_film=2">
                      <img src="../immagini/Film/Film D'avventura/Fa-Dune.jpg" alt="poster1" />
                      <div class="content">
                        <h1 class="name">Dune 2 (2024)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.7/5 | 2024-02-29 | 165 Min
                        </h3>
                        <p class="short-desc">
                          Dune - Parte Due, film diretto da Denis Villeneuve, 
                          è il secondo capitolo della saga sci-fi tratta dal romanzo di Frank Herbert.
                          <a href="scheda-film.php?Cod_Film=2">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
          
                  </div>
                  
                  <div class="card">
                    <a href="scheda-film.php?Cod_film=11">
                      <img src="../immagini/Film/Film Romantici/la la land.jpg" alt="poster2" />
                      <div class="content">
                        <h1 class="name">La La Land (2016)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 3.9/5 | 2016-07-19 | 128 Min
                        </h3>
                        <p class="short-desc">
                          La La Land è un musical contemporaneo del 2016 diretto da Damien Chazelle.
                          Emma stone nel 2017 vinse l'oscar per la miglior attrice protagonista.
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                  <div class="card">
                      <a href="scheda-film.php?Cod_film=14">
                      <img src="../immagini/Film/Film Drammatici/The Wolf of Street.jpg" alt="poster3" />
                      <div class="content">
                        <h1 class="name">The Wolf of Wall Street (2013)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.1/5 | 2013-06-29 | 128 Min
                        </h3>
                        <p class="short-desc">
                          The Wolf of Wall Street è un film del 2013 diretto da Martin Scorsese
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                  <div class="card">
                    <a href="Film/film western/ilbuono.php">
                      <img src="../immagini/Film/Western/il buono il brutto e il cattivo.jpg" alt="poster4" />
                      <div class="content">
                        <h1 class="name">Il Buono, Il Brutto e Il Cattivo (1966)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4/5 | 1966-01-25 | 175 Min
                        </h3>
                        <p class="short-desc">
                          Il Buono, il Brutto, il Cattivo è un film western del 1966 diretto da Sergio Leone
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                   </div>
                   <div class="card">
                    <a href="Film/film western/ilbuono.php">
                      <img src="../immagini/Film/Film D'avventura/Fa-Dune.jpg"alt="poster1" />
                      <div class="content">
                        <h1 class="name">Dune 2 (2024)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.7/5 | 2024-02-29 | 165 Min
                        </h3>
                        <p class="short-desc">
                          Dune - Parte Due, film diretto da Denis Villeneuve, 
                          è il secondo capitolo della saga sci-fi tratta dal romanzo di Frank Herbert.
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                </div>
            </div>
        </div>
        EOD;

            ?>
            <!-- <div class="container">
                
                <div class="movie-cards">
                  
                  
                  <div class="card">
                    <a href="scheda-film.php?Cod_film=2">
                      <img src="../immagini/Film/Film D'avventura/Fa-Dune.jpg" alt="poster1" />
                      <div class="content">
                        <h1 class="name">Dune 2 (2024)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.7/5 | 2024-02-29 | 165 Min
                        </h3>
                        <p class="short-desc">
                          Dune - Parte Due, film diretto da Denis Villeneuve, 
                          è il secondo capitolo della saga sci-fi tratta dal romanzo di Frank Herbert.
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
          
                  </div>
                  
                  <div class="card">
                    <a href="scheda-film.php?Cod_film=11">
                      <img src="../immagini/Film/Film Romantici/la la land.jpg" alt="poster2" />
                      <div class="content">
                        <h1 class="name">La La Land (2016)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 3.9/5 | 2016-07-19 | 128 Min
                        </h3>
                        <p class="short-desc">
                          La La Land è un musical contemporaneo del 2016 diretto da Damien Chazelle.
                          Emma stone nel 2017 vinse l'oscar per la miglior attrice protagonista.
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                  <div class="card">
                      <a href="scheda-film.php?Cod_film=14">
                      <img src="../immagini/Film/Film Drammatici/The Wolf of Street.jpg" alt="poster3" />
                      <div class="content">
                        <h1 class="name">The Wolf of Wall Street (2013)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.1/5 | 2013-06-29 | 128 Min
                        </h3>
                        <p class="short-desc">
                          The Wolf of Wall Street è un film del 2013 diretto da Martin Scorsese
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                  <div class="card">
                    <a href="Film/film western/ilbuono.php">
                      <img src="../immagini/Film/Western/il buono il brutto e il cattivo.jpg" alt="poster4" />
                      <div class="content">
                        <h1 class="name">Il Buono, Il Brutto e Il Cattivo (1966)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4/5 | 1966-01-25 | 175 Min
                        </h3>
                        <p class="short-desc">
                          Il Buono, il Brutto, il Cattivo è un film western del 1966 diretto da Sergio Leone
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                   </div>
                   <div class="card">
                    <a href="Film/film western/ilbuono.php">
                      <img src="../immagini/Film/Film D'avventura/Fa-Dune.jpg"alt="poster1" />
                      <div class="content">
                        <h1 class="name">Dune 2 (2024)</h1>
                        <h3 class="infos">
                          <i class="fa-solid fa-star"></i> 4.7/5 | 2024-02-29 | 165 Min
                        </h3>
                        <p class="short-desc">
                          Dune - Parte Due, film diretto da Denis Villeneuve, 
                          è il secondo capitolo della saga sci-fi tratta dal romanzo di Frank Herbert.
                          <a href="scheda-film.php">Continua...</a>
                        </p>
                        <div class="icons">
                          <a href="#"><i class="fa-solid fa-heart"></i></a>
                          <a href="#"><i class="fa-solid fa-bookmark"></i></a>
                          <a href="#"><i class="fa-solid fa-share"></i></a>
                        </div>
                      </div>
                    </a>
                  </div>
                  
                </div>
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
    <?php require("footer.php");?>
    </body>
</html>