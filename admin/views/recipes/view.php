<?php $query = new Query; ?>

<div>

	<h1><?php echo $viewmodel['recipe_title'];?></h1><p><?php echo $viewmodel['posting_time'];?></p>
	<b>Kategorija :</b>
	<?php // Izvlacenje kategorije
	$res = explode(",", $viewmodel['recipe_cats']);
	foreach ($res as $value) {
	    $res = $query->soloquery('categories', 'cat_id', $value);
	    echo $res['cat_name']." ";
	}?>
	<br>
	<h4><?php echo $viewmodel['description'];?></h4>
	<p>Vreme pripreme <?php echo $viewmodel['prep_time'];?> min. Prljavo posudje <?php echo $viewmodel['dirty_dishes'];?> kom.</p>

	<?php // izvaenje ingr, kol, i unit iz baze
	$res = explode("/", $viewmodel['recipe_ingrs']);
	foreach ($res as $value) {
		$q = explode(",", $value);
		$ingredients = $query->soloquery('ingredients', 'ingredient_id', $q[0]);
	    $kol = $q[1];
	    $units = $query->soloquery('units', 'unit_id', $q[2]);
	    echo $ingredients['ingredient_name']." ".$kol." ".$units['unit_name']."<br>";
	}?>
		<br>

	<p><?php echo $viewmodel['instructions'];?></p>

</div>



