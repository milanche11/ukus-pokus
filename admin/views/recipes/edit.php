<?php if(isset($_POST)){

	var_dump($_POST);

}  ?>

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
			echo "<input type='hidden' name='ingrs".$b."' value='".$ingredients['ingredient_id'].",".$kol.",".$units['unit_id']."'>";
			?>	
		
			<div class="clo-2">
				&nbsp &nbsp <button type="button" id='button_del<?php echo $b; ?>' onclick="closeDiv('sastojak<?php echo $b;?>')" > - </button>
			</div>
		</div><br>
	<?php
		$b++;
	}
		$b = $b-1;
		echo "<input type='text' name='old_ingredients' id='old_ingredients' value='".$b."'>";
	
		//------------------  PETAR  ----------------


		$ingr_options = $units_options = $ingrs = $units = "";
	
		foreach($query->allquery('ingredients') as $item){
			$ingr_options .= '<option value="'. $item['ingredient_id'] .'">'. $item['ingredient_name'] .'</option>';
			$ingrs .= $item['ingredient_id'].','.$item['ingredient_name'].'/';
		}

		foreach($query->allquery('units') as $item){
			$units_options .= '<option value="'. $item['unit_id'] .'">'. $item['unit_name'] .'</option>';
			$units .= $item['unit_id'] .','. $item['unit_name'] .'/';
		}
		
		$b=$b+1
	?>
	

	<div id="sastojakall">
		<div id="sastojak">
			<div class="row" id="sastojak<?php echo $b; ?>">
			
				<div class="col-4">
					<select class="form-control" name="ingredients1" id="">
						<option value=""></option>
						<?php echo $ingr_options; ?>
					</select>
				</div>
				
				<div class="col-3">
				  <input type="text" class="form-control" name="kolicina1" placeholder="kolicina">
				</div>
				
				<div class="col-3">
					<select class="form-control" name="units1" >
						<option value=""></option>
						<?php echo $units_options; ?>	
					</select>
				</div>
				
				<div id="button-div<?php echo $b; ?>" class="col-2">
					<button type="button" class="button-del" id='button-del<?php echo $b; ?>' onclick="closeDiv('sastojak<?php echo $b;?>')"> - </button>
					<button type="button" id='button<?php echo $b; ?>' onclick='cloneFunction("<?php echo $b; ?>","<?php echo $ingrs; ?>","<?php echo $units; ?>",1)'>+</button>
				</div>
			</div>
		</div>
		<input type="text" id="new_ingredients" name="new_ingredients" value="1">
	</div>
<!--- END PETAR  -->


    <label>Kategorije</label>
    <?php $viewmodel['recipe_cats'] ; ?>
	<select class="form-control form-control-lg custom-select" name="categories[]" multiple aria-label="Search for...">
		<?php $rezultat = explode(",", $viewmodel['recipe_cats']); ?>
		<?php foreach($query->allquery('categories') as $item) :?>
				<?php foreach($rezultat as $bat) :?>
		  			<?php if ($item['cat_id'] == $bat){ ?>
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
		
		$ii=1;
		foreach($soloimage as $id){

			$imageprint = $query->soloquery('photos', 'photo_id', $id);
			echo '<div id="image'.$ii.'">';
			echo 	$imageprint['photo_link'].'&nbsp <button class="btn-danger btn-sm" onclick="delPhoto('.$id.",'image".$ii."'".')"> Delete </button>';
			echo	"<input type='hidden' name='old_image_id".$ii."' value='".$imageprint['photo_id']."' >";
			echo '</div><br>';
			
			$ii++;
		}
	?>
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

