<!DOCTYPE html>
<html lang="sr">
<head>

  <!-- styling -->
	<title>Ukus pokus | Brzi recepti od onoga što imate u kući</title>
  
	<link rel="stylesheet" type="text/css" href=" <?php echo ROOT_URL; ?>assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href=" <?php echo ROOT_URL; ?>assets/css/style.css">
  <link rel="icon" type="image/png" sizes="192x192"  href="<?php echo ROOT_URL; ?>assets/images/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?php echo ROOT_URL; ?>assets/images/favicon/favicon-96x96.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

       <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
</head>
<body>
  <div class="container-fluid">
    <nav class="navbar">
      <a class="navbar-brand" id="main-logo" href="<?php echo ROOT_URL; ?>">
          <img src="<?php echo ROOT_URL; ?>/assets/images/logo1.jpg"></a>

      <div>
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link animated" href="<?php echo ROOT_URL; ?>">Početna</a>
          </li>
          <li class="nav-item">
            <a class="nav-link animated" href="<?php echo ROOT_URL; ?>recipes">Vidi šta sve ima!</a>
          </li>
          <li class="nav-item">
            <a class="nav-link animated" href="<?php echo ROOT_URL; ?>search">Pretraga</a>
          </li>
        </ul>
      </div> 

        <!-- Admin linkovi

              <div>
                <ul class="nav" id="logging">
                  <?php 
                    if(isset($_SESSION['is_logged_in'])) : ?>

                      <li class="nav-item"><a type="button" class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>">Dobrodošli, <?php echo $_SESSION['user_data']['name']; ?></a>
                      </li>
                      <li class="nav-item"><a type="button" class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>users/logout">Izloguj se</a>
                      </li>

                  <?php else : ?>

                      <li><a class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>users/login">Uloguj se</a>
                      </li>
                      <li ><a class="btn btn-success btn-sm" href="<?php echo ROOT_URL; ?>users/register">Registruj se</a>
                      </li>

                  <?php endif; ?> 
                </ul>
              </div>    
          
        -->
    </nav>

    <br><br>

    <div class="container-fluid">
      <div class="row justify-content-center">
     	  <?php require($view); ?>
      </div> 
      <br><br>
      <div class="row justify-content-center">
        <?php Messages::display(); ?>
      </div>
    </div><!-- /.container -->

    <br>
    <hr>

   


    <footer>
      <nav >

      <ul class="nav justify-content-center">
        
        <li class="nav-item">
                  <a class="nav-link" href="#"> © 2017 Ukus Pokus. Sva prava zadržana. </a>
        </li>
        <li class="nav-item">
                  <a class="nav-link" href="<?php echo ROOT_URL; ?>kontakt">Kontakt</a>
        </li>
        <li class="nav-item">
                  <a class="nav-link" href="https://www.kolezeeesolutions.com/" target="_blank"> Kreirao i održava Kolezeee Solutions</a>
        </li>
        
      </ul>
      </nav>

    </footer>
  </div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

</body>
</html>