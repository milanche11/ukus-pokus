<?php
class RecipesModel extends Model{
	public function Index(){
	if(isset($_POST['delete'])){
	$this->query('UPDATE recipes SET status = :status WHERE recipe_id = :id');
	$this->bind(':id', $_POST['delete']);
	$this->bind(':status', 0);
	$this->execute();

}elseif(isset($_POST['activate'])){
	$this->query('UPDATE recipes SET status = :status WHERE recipe_id = :id');
	$this->bind(':id', $_POST['activate']);
	$this->bind(':status', 1);
	$this->execute();
	// Redirect	
	header('Location: '.ROOT_URL.'recipes');

}









	$this->query("SELECT * FROM recipes WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;

	}
	
	public function insert(){
		
		if(isset($_POST['submit'])){
			var_dump($_POST);

			$ing = $_POST['ingredients1'].",".$_POST['kolicina1'].",".$_POST['units1']; // pripremanje ingridients, kolicine, units stringa za upis

			if(isset($_POST['categories'])){
				// iscitavanje kategorije i trimovanje pre unosa
				$i = 0;
				$catarr = '';
				foreach ($_POST['categories'] as $value) {
					$catarr .= $value[$i].",";
				}
				$cat = trim($catarr, ",");
			}else{
				$cat = "";
			}


			// $this->query('INSERT INTO recipes (recipe_title, description, prep_time, dirty_dishes, instructions, status, recipe_cats, recipe_ingrs, recipe_ingrs_id, recipe_photos, user_id) VALUES (:recipe_title, :description, :prep_time, :dirty_dishes, :instructions, :status, :recipe_cats, :recipe_ingrs, :recipe_ingrs_id, :recipe_photos, :user_id)');
			// $this->bind(':recipe_title', $_POST['name_recipes']);
			// $this->bind(':description', $_POST['descriptions']);
			// $this->bind(':prep_time', $_POST['time']);
			// $this->bind(':dirty_dishes', $_POST['drty']);
			// $this->bind(':instructions', $_POST['recept']);
			// $this->bind(':status', 1);
			// $this->bind(':recipe_cats', $cat);
			// $this->bind(':recipe_ingrs', $ing);
			// $this->bind(':recipe_ingrs_id', 2);
			// $this->bind(':recipe_photos', 2);
			// $this->bind(':user_id', $_POST['ime']);
			// $this->execute();
		}
	}
	public function delete(){
		
	}
	public function view(){
	$id = $_GET['id'];
	$this->query("SELECT * FROM recipes WHERE recipe_id = '$id'"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;

	}
	
}