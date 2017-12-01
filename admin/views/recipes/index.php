<h1>Recipes</h1><hr>
<a href="<?PHP ROOT_URL ?>recipes/insert">UNESI RECEPT</a><BR>
<?php $q = new Query; 

foreach($q->allquery('recipes') as $item) : ?>

NASLOV - <?php echo $item['recipe_title']; ?><br>
OPIS - <?php echo $item['description']; ?><br>
VREME PRIPREME - <?php echo $item['prep_time']; ?><br>
PLJAVO SUDE - <?php echo $item['dirty_dishes']; ?><br>
DATUM POSTAVKE - <?php echo $item['posting_time']; ?><br>
KATEGORIJA - <?php $arr = explode(",",$item['recipe_cats']);
		foreach($arr as $id){
			$ress = $q->soloquery('categories', 'cat_id' , $id)['cat_name']; echo $ress. ', ';
		}?><br>

SASTOJCI - 	<?php $arr = explode("/",$item['recipe_ingrs']);
		foreach($arr as $id){
			$soloing = explode(",",$id);
				$oneing = $q->soloquery('ingredients', 'ingredient_id' , $soloing[0])['ingredient_name'];	
				$oneunit = $q->soloquery('units', 'unit_id' , $soloing[2])['unit_name'];
				echo $oneing. ' '. $soloing[1]. ''. $oneunit. '<br> ';
		}?><br>

PHOTO - <?php echo $item['recipe_photos']; ?><br> 

USER - <?php echo $q->soloquery('users', 'user_id' , $item['user_id'])['username']; ?><br> 

<hr><?php endforeach; ?>

