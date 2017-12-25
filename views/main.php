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
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta http-equiv="pragma" content="no-cache"/>
      <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="Cache-Control" content="no-store" />

    <!-- Snow -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
    <script src="<?php echo ROOT_URL; ?>assets/js/snow.js"></script>
    <link rel="stylesheet" href=" <?php echo ROOT_URL; ?>assets/css/snow.css">" />

    <!-- Autocomplete search -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.css" rel="stylesheet"/>        

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">  
</head>

<body class="background">
<div class="container-fluid nopadding"><!-- Glavni kontejner -->
      <!-- Snow hidden
      <span class="hidden" id="snowflake">&#10052;</span>-->
    
    <div class="row beige ">
      <div class="top-right">
        <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/fb.png" class="float-right"></a>&nbsp;
        <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/inst.png" class="float-right"></a>&nbsp;
        <a><img src="<?php echo ROOT_URL; ?>/assets/images/soc/twitter.png" class="float-right"></a>&nbsp;
      </div>
    </div>

    <div class="row navigacija"><!-- Navigacija -->
         <nav class="navbar d-flex">

                <!-- Logo -->
                <a class="navbar-brand mr-auto p-2" id="main-logo" href="<?php echo ROOT_URL; ?>"><img src="<?php echo ROOT_URL; ?>/assets/images/logo1.png"></a>
              
               <div><!-- Navigacija -->
                  <ul class="nav">
                      <li class="nav-item"><a class="nav-link animated p-2" href="<?php echo ROOT_URL; ?>">Početna</a></li>
                      <li class="nav-item"><a class="nav-link animated p-2" href="<?php echo ROOT_URL; ?>categories">Kategorije</a></li>
                      <li class="nav-item"><a class="nav-link animated p-2" href="<?php echo ROOT_URL; ?>search">Pretraga</a></li>
                  </ul>
                </div> 
          </nav>
    </div><!-- Navigacija end -->

    <br><br>

    <!-- Main  -->
    <div class="container-fluid nopadding">
       <div class="row justify-content-center">
     	<?php require($view); ?>
       </div> 
       <br><br>
       <div class="row justify-content-center">
       <?php Messages::display(); ?>
       </div>
       <br>
   </div><!-- Main end -->

    
    <footer><!-- Footer -->
        <nav>
          <ul class="nav justify-content-center">
                 <li class="nav-item"><a class="nav-link" href="#"> © 2017 Ukus Pokus. Sva prava zadržana. </a></li>
                 <li class="nav-item"><a class="nav-link" href="<?php echo ROOT_URL; ?>kontakt">Kontakt</a></li>
                 <li class="nav-item"><a class="nav-link" href="https://www.kolezeeesolutions.com/" target="_blank"> Kreirao i održava Kolezeee Solutions</a></li>
           </ul>
        </nav>
    </footer><!-- End footer -->

</div><!-- End glavni kontejner -->

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script src="//code.jquery.com/jquery-1.9.1.js"></script> <!-- Skripta za funkcionisanje uploada slika preko ajax-a  -->
</body>
</html>