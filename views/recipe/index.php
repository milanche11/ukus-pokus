<?php

$recept = new RecipeModel();
$id = $recept->getid();
$receptPrikaz = $recept->recipe($id);

//promenljive koje sluze za prikazivanje trazenog recepta
$recipeId = $receptPrikaz['recipe_id'];
$recipeTitle = $receptPrikaz['recipe_title'];
$recipeDesc = $receptPrikaz['description'];
$recipePrep = $receptPrikaz['prep_time'];
$recipeDishes = $receptPrikaz['dirty_dishes'];
$recipeInst = $receptPrikaz['instructions'];
$recipeTime = $receptPrikaz['posting_time'];
$recipeStatus = $receptPrikaz['status'];
$recipeCats = $receptPrikaz['recipe_cats'];
$recipeIngrs = $receptPrikaz['recipe_ingrs'];
$recipePhotos = $receptPrikaz['recipe_photos'];

//upit za slike
$slike = array();
$slike = explode(",", $recipePhotos);

 $ids = '';
foreach ($slike as $item) {
	$ids .=  "photo_id=" . $item . " OR ";
}
 $ids = rtrim($ids, "OR ");
 $ids = $ids . " LIMIT 3";

 //echo $ids;

$fotke = new RecipeModel();
$fotkeAll = $fotke->photos($ids);

//upit za kategorije
$kategorije = array();
$kategorije = explode(",", $recipeCats);

$idscats = '';
foreach ($kategorije as $key) {
	$idscats .= "cat_id=" . $key . " OR ";
}
$idscats = rtrim($idscats, "OR ");

echo $idscats;

$categories = new RecipeModel();
$catAll = $categories->categories();

//print_r($catAll);

?>

<div class="container-fluid">
	<div class="text-center">
		<h1><?php  echo $recipeTitle;   ?></h1>
		<br><br>
	</div>	
	
	<div class="col-lg-8 offset-lg-2">
		<!-- Carousel -->
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img class="d-block w-100" src="<?php echo ROOT_URL; ?>/assets/images/<?php echo $fotkeAll[0]['photo_link'] ?>" alt="<?php echo $fotkeAll[0]['photo_alt'] ?>">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="<?php echo ROOT_URL; ?>/assets/images/<?php echo $fotkeAll[1]['photo_link']  ?>" alt="<?php echo $fotkeAll[1]['photo_alt'] ?>">
		    </div>
		    <div class="carousel-item">
		      <img class="d-block w-100" src="<?php echo ROOT_URL; ?>/assets/images/<?php echo $fotkeAll[2]['photo_link']  ?>" alt="<?php echo $fotkeAll[2]['photo_alt'] ?>">
		    </div>
		  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Prethodna</span>
  </a>

  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Sledeća</span>
  </a>

		</div>
	</div>

	<!--Carousel end -->
	<br>
</div>

<div class="container-fluid">
	<div class="col-lg-10 offset-lg-1">
		<div class="col-lg-10 offset-lg-1">
		<p class="desc"><?php echo $recipeDesc; ?> </p>
		<br>
		</div>
		<p><strong>Pripada kategorijama: </strong><?php echo $recipeCats; ?> <br>
		<strong>Vreme pripreme: </strong><?php echo $recipePrep; ?> min<br>
		<strong>Broj potrebnih posuda: </strong><?php echo $recipeDishes; ?> kom<br>
		<strong>Sastojci: </strong><?php echo $recipeIngrs; ?> </p>
		<div class="text-center">
			<h4>Uputstvo za pripremu: </h4>
		</div>
		<p><?php echo $recipeInst; ?> </p>
		
	</div>
</div>	
<div class="text-center">
	<h4>Prijatno! </h4>
</div>

<?php
/*
echo "<br>";
echo $recipeCats;
echo "<br>";
echo $recipeIngrs;
echo "<br>";
*/


?>
