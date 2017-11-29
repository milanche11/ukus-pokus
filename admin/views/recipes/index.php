<h1>Recipes</h1><hr>
<?php $q = new Query; ?>

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

