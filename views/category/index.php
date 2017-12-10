<?php
$categorymodel = new CategoryModel();
$queryinstance = new Query();

$catId = $categorymodel->getId();

//upit za dobijanje recepata iz konkretne kategorije

$query = " AND (recipe_cats like '%," .  $catId . ",%')";
$recipesAll = $queryinstance->allRows("recipes",$query);

//upit za dobijanje detalja kategorije
$query = "cat_id=" . $catId;
$catName = $queryinstance->singleRow("categories",$query);




?>
<div class="container-fluid">
	<div class="row">
		<div class="col-12 text-center">
			<br><h2>Recepti koji pripadaju kategoriji <span class='green'><?php  echo $catName['cat_name'];  ?></span> </h2><br><br><br>
		</div>	
	</div>

	<!-- ispis liste recepata -->
	<div class="row">
		<div class="col-8 offset-2 text-center recipelist">
			<?php
			// ispis liste recepata
			foreach ($recipesAll as $recipe) {
				$recipeId = $recipe['recipe_id'];
				$title = $recipe['recipe_title'];

				echo "<p><a href='". ROOT_URL ."recipe/". $recipeId ."'>". $title ."</a></p>";
			}
			?>

			<br><p>Ovde dođe paginacija... 1 ... 5 6 7 8 9 10 11 ... 128</p><br>
		</div>
	</div>











</div> <!-- end container fluid -->


