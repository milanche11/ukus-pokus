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

  
	<label><b>Sastojci</b></label>

	<!-- Milan logika citanja -->
	<?php // izvaenje ingr, kol, i unit iz baze
	$b=1; 
		$ingr_options = $units_options = $ingrs = $units = "";
	
	$res = explode("/", $viewmodel['recipe_ingrs']);
	foreach ($res as $value) {
		$q = explode(",", $value);
		
		$kol = $q[1];
		$units = $query->soloquery('units', 'unit_id', $q[2]);

		$ingredients = $query->soloquery('ingredients', 'ingredient_id', $q[0]);
		?>
		<div id="sastojak<?php echo $b; ?>" class="row">
		
			<?php 		
			echo "<div class='col-4'>".$ingredients['ingredient_name']."</div>"; 
			echo "<div class='col-3'>".$kol."</div>";	
			echo "<div class='col-3'>".$units['unit_name']."</div>"; 
			?>	
		
			<div class="clo-2">
				&nbsp &nbsp <button type="button" id='button_del<?php echo $b; ?>' onclick="closeDiv('sastojak<?php echo $b;?>')" > - </button>
			</div>
		</div><br>
	<?php
	   // echo $ingredients['ingredient_name']." ".$kol." ".$units['unit_name']."<br>";
	}?>
	<!-- Krak logike -->

	
	
	<!-- PETAR  -->
	<?php 
		$c=1; 
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
	

	<div id="sastojakall">
		<div id="sastojak">
			<div class="row" id="noviSastojak<?php echo $c; ?>"> <!-- Java script kopira od ovog mesta class="row" --> 
			
				<div class="col-4">
					<select class="form-control" name="ingredients<?php echo $c; ?>" id="">
						<?php echo $ingr_options; ?>
					</select>
				</div>
				
				<div class="col-3">
				  <input type="text" class="form-control" name="kolicina<?php echo $c; ?>" placeholder="kolicina">
				</div>
				
				<div class="col-3">
					<select class="form-control" name="units<?php echo $c; ?>" >
						<?php echo $units_options; ?>	
					</select>
				</div>
				
				<div id="button-div<?php echo $c; ?>" class="col-2">
					<button type="button" class="button-del" id='button-del<?php echo $c; ?>' onclick="closeDiv('noviSastojak<?php echo $c;?>')"> - </button>
					<button type="button" id='button<?php echo $c; ?>' onclick='cloneFunction("<?php echo $c; ?>","<?php echo $ingrs; ?>","<?php echo $units; ?>")'>+</button>
				</div>
			</div>
		</div>
	</div>
<!--- END PETAR  -->


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

