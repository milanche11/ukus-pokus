<h1>Recipes</h1><hr>
<?php $q = new Query; 

print_r($q->listAllrecipes());
?>

<select name="categories" multiple>
<?php foreach($q->listAllcategories() as $item) : ?>
	<option value=""> <?php echo $item['cat_name']; ?> </option>
<?php endforeach; ?>
</select>
<select name="ingredient" multiple>
<?php foreach($q->listAllingredients() as $item) : ?>
	<option value=""> <?php echo $item['ingredient_name']; ?> </option>
<?php endforeach; ?>
</select>

<?php foreach($q->listAllrecipes() as $item) : ?>

<?php echo $item['recipe_title']; ?><br>
<?php echo $item['description']; ?><br>
<?php echo $item['prep_time']; ?><br>
<?php echo $item['dirty_dishes']; ?><br>
<?php echo $item['posting_time']; ?><br>
<?php echo $item['recipe_cats']; ?><br>
<?php echo $item['recipe_ingrs']; ?><br>
<?php echo $item['recipe_ammounts']; ?><br>
<?php echo $item['recipe_units']; ?><br>
<?php echo $item['user_id']; ?><br>

<hr><?php endforeach; ?>

