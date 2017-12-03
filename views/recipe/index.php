<?php
//upit za jedinice mere 
$unit = new RecipeModel();
$units = $unit->units();

//povlacenje get parametra
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

if($recipeStatus == 0){
	header('Location: ' . ROOT_URL);
}else{	

//upit za slike
$slike = array();
$slike = explode(",", $recipePhotos);

 $ids = '(';
foreach ($slike as $item) {
	$ids .=  "photo_id=" . $item . " OR ";
}
 $ids = rtrim($ids, "OR ");
 $ids = $ids . ") AND (status=1) LIMIT 3 ";

$fotke = new RecipeModel();
$fotkeAll = $fotke->photos($ids);

//upit za kategorije
$kategorije = array();
$kategorije = explode(",", $recipeCats);

$idscats = '(';
foreach ($kategorije as $key) {
	$idscats .= "cat_id=" . $key . " OR ";
}
$idscats = rtrim($idscats, "OR ");
$idscats = $idscats . ") AND (status=1) ";

$categories = new RecipeModel();
$catAll = $categories->categories($idscats);

//upit za dobavljanje sastojaka
$sastojci = array();
//razbijanje po slash-u
$sastojci = explode("/", $recipeIngrs);
echo "<br>";

$ing = new RecipeModel();

?>


<!-- carousel -->
<div class="container-fluid">
	<div class="text-center">
		<h1><?php  echo $recipeTitle;   ?></h1>
		<br>
	</div>	
	
	<div class="col-lg-8 offset-lg-2">
		<p class="desc"><?php echo $recipeDesc; ?> </p>
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
	<div class="col-lg-10 offset-lg-2">
		
		<small><strong>Nalazi se u kategorijama: </strong>
			<?php foreach ($catAll as $key) {
				echo "<a class='btn btn-success btn-sm cats'>" . $key['cat_name'] . " </a>";
			}?>
		 </small><br> 
		 <small><strong>Rejting: </strong><img src="<?php echo ROOT_URL; ?>/assets/images/5-star-rating.png" alt="5-star-rating"> (156 glasova)</small><br>
		 
		<small>	<strong>Vreme pripreme: </strong><?php echo $recipePrep; ?> min</small><br>
		<small>	<strong>Broj potrebnih posuda: </strong><?php echo $recipeDishes; ?> kom</small><br><br><br>

	</div>
	<h4 class="text-center">Sastojci:  </h4><br>
	
	<div class="col-lg-10 offset-lg-2">	
		
		<?php 

		//upit za dobavljanje sastojaka
		$sastojci = array();
		//razbijanje po slash-u
		$sastojci = explode("/", $recipeIngrs);
		$ing = new RecipeModel();

		echo "<div class='col-lg-6'>";
		//ispis liste sastojaka
		echo '<table class="table  sastojci table-sm"><tbody>';
		foreach ($sastojci as $set) {
			$niz = $set;
			
			echo "<tr>";
			//razbijanje po zarezu
			$particles = array();
			$particles = explode(",", $niz);

			//ispis liste sastojaka i njihovih kolicina i jedinica mere
			echo "<td  class='ingrlist' >";
			$ingrId = $particles[0]; 
			$ingAll = $ing->ingrs($ingrId);
			echo $ingAll['ingredient_name'];  
			echo "</td>";
			
			echo "<td class='ingrlist' style='width: 60px;'>";
			$ammount = $particles[1]; 
			echo $ammount;
			echo "</td>";
			
			$unitId = $particles[2]; 
			echo "<td  class='ingrlist' style='width: 120px;'>";
			//upit za naziv jedinice mere
			foreach ($units as $mera) {

				$red = $mera;
				//echo $red['unit_id'];
				if ($red['unit_id'] == $unitId) {
					echo $red['unit_name'];
				}
			}
			echo "</td>";
			echo "</tr>";		
		}
		echo "</tbody></table>";
		echo "</div>";
		?> 
		<br><br>
	</div>
	<div class="col-lg-10 offset-lg-1">			
		<div class="text-center">
			<h4>Uputstvo za pripremu: </h4>
		</div>

		<!-- ispis uputstva za pripremu -->
		<p><?php echo $recipeInst; ?> </p><br><br>
	</div>	
		
</div>	


<!-- prijatno -->
<div class="container-fluid">
	<div class="row">
		<div class="col-12 text-center">
			<h4>Prijatno! </h4><br><br><br>
		</div>
	
	</div>
</div>

<!-- ponovljene kategorije -->
<div class="container-fluid">
	
	<div class="col-10 offset-1">
		<small><strong>&nbsp;&nbsp;&nbsp;&nbsp;Potražite i druge recepte u kategorijama: </strong>
			<?php 
			foreach ($catAll as $key) {
				echo "<a class='btn btn-success btn-sm cats'>" . $key['cat_name'] . " </a>";
			}?> <br> <br><br>
		</small>
	</div>
	<hr>
</div>

<?php
}
?>

<!-- komentarisanje -->
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-6 offset-lg-2"><br>
			<h5>Postavite svoj komentar :  </h5>
			<small> Ispričajte kako je vama ispalo, da li ste nešto dodali ili drugačije uradili? Ideje za posluživanje i serviranje? Sa čim ste kombinovali?</small><br><br>
			<form method="POST" action="<?php $_SERVER['PHP_SELF']?>">
				 <div class="form-group">
				 <label for="exampleInputIme1">Vaše ime</label>
				 <input type="text" class="form-control" id="exampleInputText1" name="ime" placeholder="Vaše ime" required>
				  </div>	

				  <div class="form-group">
				    <label for="exampleInputEmail1">Vaša email adresa</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Unesite email" name="email" required>
				    <small id="emailHelp" class="form-text text-muted">Nikada nećemo proslediti vaš email bilo kome, niti ga zloupotrebiti na drugi način.</small>
				  </div>

				  <div class="form-group">
				 <label for="exampleInputText1">Vaš komentar</label>
				 <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Unesite svoj komentar..." name="komentar" required></textarea>
				<br>
				  </div>	
				  <button type="submit" class="btn btn-success" name="submit" >Pošalji</button>
			</form>
		</div>
	
	</div>
</div>






