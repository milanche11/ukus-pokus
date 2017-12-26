<!DOCTYPE html>
<html lang="sr">
<head>
	<title>Ukus pokus | Brzi recepti od onoga što imate u kući</title>

      <!-- styling -->
      <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.css" rel="stylesheet"/>
      <link rel="stylesheet" type="text/css" href=" <?php echo ROOT_URL; ?>assets/css/bootstrap.css">
      <link rel="stylesheet" type="text/css" href=" <?php echo ROOT_URL; ?>assets/css/style.css">
      <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo ROOT_URL; ?>assets/images/favicon/android-icon-192x192.png">
      <link rel="icon" type="image/png" sizes="96x96" href="<?php echo ROOT_URL; ?>assets/images/favicon/favicon-96x96.png">
      <meta charset="utf-8">
      <!-- <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  ?? -->

      <!-- Autocomplete search -->
      <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.css" rel="stylesheet"/>        

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">  
</head>

<body>
  <div class="container-fluid no-gutters nopadding"><!-- Glavni kontejner za ceo sajt -->
    
      <!-- Braon trakica na vrhu -->
      <div class="row nopadding no-gutters">
        <div class="d-flex justify-content-end beige">
          <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/fb.png" class="soc"></a>
          <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/inst.png" class="soc"></a>
          <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/twitter.png" class="soc"></a>
        </div>
          
      </div><!-- Kraj braon trakice -->

    <!-- Navigacija -->
    <nav class="navbar navbar-expand-lg">

      <!-- Logo -->
      <a class="navbar-brand mr-auto p-2" href="<?php echo ROOT_URL; ?>"><img src="<?php echo ROOT_URL; ?>/assets/images/logo1.png" alt='logo' class="main-logo"></a><!-- kraj logo -->

      <!-- Dugme hamburger -->
      <button class="navbar-toggler p-2" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"><img src="<?php echo ROOT_URL; ?>/assets/images/menu.png" alt='menu' class="menu"></span></button><!-- kraj dugme -->

      <!-- Menu items -->
      <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
          <ul class="navbar-nav">
              <li class="nav-item"><a class="nav-link animated" href="<?php echo ROOT_URL; ?>">Početna <span class="sr-only">(current)</span></a></li>
              <li class="nav-item"><a class="nav-link animated" href="<?php echo ROOT_URL; ?>categories">Kategorije</a></li>
              <li class="nav-item"><a class="nav-link animated" href="<?php echo ROOT_URL; ?>search">Pretraga</a></li>      
          </ul>
       </div><!-- Kraj menu items -->
     </nav> <!-- Kraj navigacija -->

   
    <!-- Main  -->
    <div class="container-fluid">
       <div class="row justify-content-center">
     	  <?php require($view); ?>
       </div> 

       <br><br>

       <div class="row justify-content-center">
      <?php Messages::display(); ?>
       </div>
    </div><!-- Kraj main -->
    <br>
  
    <!-- Footer -->
    <footer>
        <nav >
          <ul class="nav justify-content-center">
                 <li class="nav-item"><a class="nav-link" href="#"> © 2017 Ukus Pokus. Sva prava zadržana. </a></li>
                 <li class="nav-item"><a class="nav-link" href="<?php echo ROOT_URL; ?>kontakt">Kontakt</a></li>
                 <li class="nav-item"><a class="nav-link" href="https://www.kolezeeesolutions.com/" target="_blank"> Kreirao i održava Kolezeee Solutions</a> </li>
          </ul>
        </nav>
    </footer><!-- End footer -->

  </div><!-- Kraj glavnog kontejnera za ceo sajt -->

      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
	<script src="//code.jquery.com/jquery-1.9.1.js"></script> <!-- Skripta za funkcionisanje uploada slika preko ajax-a  -->

</body>
</html>