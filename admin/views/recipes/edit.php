<h1>Edit recipes</h1><hr>

  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.js"></script>

<?php $query = new Query; ?>
<form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    <label>Ime Recepta</label>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" name="name_recipes" value="<?php echo $viewmodel['recipe_title'];?>" placeholder="Name recipes"><br>
    </div>
  </div>
    <label>Kratak opis</label>
  <div class="row">
    <div class="col">
      <input type="text" class="form-control" name="descriptions" value="<?php echo $viewmodel['recipe_title'];?>" placeholder="Do 200 karaktera"><br>
    </div>
  </div>
  <div class="row">
    <div class="col">
      <label>Vreme pripreme</label>
      <input type="text" class="form-control" name="time" value="<?php echo $viewmodel['prep_time'];?>" placeholder="Preparation time min">
    </div>
    <div class="col">
      <label>Prljavo posudje</label>
      <input type="text" class="form-control" name="drty" value="<?php echo $viewmodel['dirty_dishes'];?>" placeholder="Drty dishes"><br>
    </div>
  </div> 

	<?php 
		$b=1; 
		$ingr_options = $units_options = $ingrs = $units = "";
	
		foreach($query->allquery('ingredients') as $item){
			$ingr_options .= '<option value="'. $item['ingredient_id'] .'">'. $item['ingredient_name'] .'</option>';
			$ingrs .= $item['ingredient_id'].','.$item['ingredient_name'].'/';
		}

		foreach($query->allquery('units') as $item){
			$units_options .= '<option value="'. $item['unit_id'] .'">'. $item['unit_name'] .'</option>';
			$units .= $item['unit_id'] .','. $item['unit_name'] .'/';
		}

	?>
	<label><b>Sastojci</b></label>

	<!-- Milan logika citanja -->
	<?php // izvaenje ingr, kol, i unit iz baze
	$res = explode("/", $viewmodel['recipe_ingrs']);
	foreach ($res as $value) {
		$q = explode(",", $value);

		$ingredients = $query->soloquery('ingredients', 'ingredient_id', $q[0]);?>
		<div class="row">
		<div class="col-4">
				<?php echo $ingredients['ingredient_name']; ?>
		</div>
	  <?php   $kol = $q[1];?>
		<div class="col-3">
		  <?php echo $kol;?>
		</div>
	  <?php

	    $units = $query->soloquery('units', 'unit_id', $q[2]);?>
	 	<div class="col-4">
			<?php echo $units['unit_name']; ?>	
		</div>
		<div class="clo-1">
			<button type="button" id='button<?php echo $b; ?>' '> - </button>
		</div>
	</div>
<?php
	   // echo $ingredients['ingredient_name']." ".$kol." ".$units['unit_name']."<br>";
	}?><br>
	<!-- Krak logike -->


	<div id="sastojakall">
		<?php //foreach ($viewmodel['prep_time'] as $key => $value) :?>
		<div id="sastojak">
			<div class="row" id="sastojak<?php echo $b; ?>"> <!-- Java script kopira od ovog mesta class="row" --> 
			
				<div class="col-4">
					<select class="form-control" name="ingredients<?php echo $b; ?>" id="">
						<?php echo $ingr_options; ?>
					</select>
				</div>
				
				<div class="col-3">
				  <input type="text" class="form-control" name="kolicina<?php echo $b; ?>" placeholder="kolicina">
				</div>
				
				<div class="col-4">
					<select class="form-control" name="units<?php echo $b; ?>" >
						<?php echo $units_options; ?>	
					</select>
				</div>
				
				<div class="col-1">
				 <button type="button" id='button<?php echo $b; ?>' '> + </button>
				</div>
				
			<?php $b++ ?>
			</div> <!-- Zavrsetak kopiranja java scripta -->



		</div>
	</div>


    <label>Kategorije</label>
    <?php $viewmodel['recipe_cats'] ; ?>
	<select class="form-control form-control-lg custom-select" name="categories[]" multiple aria-label="Search for...">
		<?php $rezultat = explode(",", $viewmodel['recipe_cats']); ?>
		<?php foreach($query->allquery('categories') as $item) :?>
				<?php foreach($rezultat as $cat) :?>
		  			<?php if ($item['cat_id'] == $cat){ ?>
						<option value="<?php echo $item['cat_id']; ?>" selected> <?php echo $item['cat_name']; ?> </option>
		  			<?php } else { ?>
						<?php //?>
		  			<?php } ?>
				<?php endforeach; ?>
				<option value="<?php echo $item['cat_id']; ?>"> <?php echo $item['cat_name']; ?> </option>
		<?php endforeach; ?>

	</select> 

	<div class="form-group">
		<label>Opis recepta</label>
		<textarea class="form-control" name="recept" id="exampleFormControlTextarea1" rows="10"><?php echo $viewmodel['instructions'];?></textarea>
	</div>
	
	
	<label>Slike</label><br>	
	<?php

		$soloimage = explode(",",$viewmodel['recipe_photos']);

	 foreach($soloimage as $id) {

			$imageprint = $query->soloquery('photos', 'photo_id', $id);
			echo $imageprint['photo_link']. '<br>';

		 }?>
	<div>	
		<div>
			<br><button type="button" id="add_photo" onclick="addImage()" class="">Add image</button>	
		</div>
		
		<div>
			<div id="added_images"></div>
		</div>
		
		<input type="hidden" id="images_id" name="images_id" value=""><br>
	</div>
	

   
	<div class="row"> 
		<div class="col">
			<input class="btn btn-primary" name="submit" type="submit" value="Add" />
		</div>
	</div>
	
	<input type="hidden" name="ime" value="<?php echo $_SESSION['user_data']['user_id'];?>">
	<input type="hidden" id="num_of_ingredients" name="num_of_ingredients" value="">
</form>

<?php// print_r($_SERVER); ?>


		  		<?php

 ?>


<script>
 $("select").select2();

$("select").on("select2:unselect", function (evt) {
  if (!evt.params.originalEvent) {
    return;
  }
  
  evt.params.originalEvent.stopPropagation();
});

</script>


<script>

function cloneFunction(b,ingrs,units) {
    var c = Number(b) + 1 ;
    var ingr_array = ingrs.split('/'); //rasturanje stringa u kome se nalaze podaci za <option> (ingredient_id i ingredient_name) u niz
    var unit_array = units.split('/'); //rasturanje stringa u kome se nalaze podaci za <option> (unit_id i unit_name) u niz

    var ingr_arrayLength = ingr_array.length-1;
    var options_ingredient = "";
    
    for (var i = 0; i < ingr_arrayLength; i++) { //petlja koja pravi string u kome se nalaze svi <option> za <select> "ingredients"
      var options_ingr = ingr_array[i].split(',');
      
      var option_ingredient = '<option value="' +options_ingr[0]+ '">'+options_ingr[1]+'</option>';
      var options_ingredient = options_ingredient + option_ingredient; // variabla koja sadrzi sve ingredient <options>
    }
  
  
	var unit_arrayLength = unit_array.length-1;
	var options_unit = "";

	for (var i = 0; i < unit_arrayLength; i++) { //petlja koja pravi string u kome se nalaze svi <option> za <select> "units"
		var options_un = unit_array[i].split(',');

		var option_unit = '<option value="' +options_un[0]+ '">'+options_un[1]+'</option>';
		var options_unit = options_unit + option_unit; // variabla koja sadrzi sve unit <options>
	}

//  alert (options_unit);

	$("#sastojak").append("<div class='row'  id='sastojak"+c+"'></div>");

	var select_ingredient = '<div class="col-4"><select class="form-control" name="ingredients'+c+'" id="">'+options_ingredient+'</select></div>';
	var kolicina = '<div class="col-3"><input type="text" class="form-control" name="kolicina'+c+'" placeholder="kolicina"></div>';
	var select_unit = '<div class="col-4"><select class="form-control" name="units'+c+'" >'+options_unit+'</select></div>';
	var button = "<div class='col-1'><button type='button' id='button"+c+"' onclick='cloneFunction(" +c+ ',"' +ingrs+ '","' +units+ '"' +")'>+</button></div>";

	$("#sastojak"+c).append(select_ingredient + kolicina + select_unit + button);
	$("#button"+b).css("display", "none");
	$("#num_of_ingredients").val(c);
}
</script>