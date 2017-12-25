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

		$this->query("SELECT recipe_title,posting_time FROM recipes"); //PETAR
	//	$this->query("SELECT * FROM recipes WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;

	}
	
	public function insert(){
		
		if(isset($_POST['add'])){
			var_dump($_POST);
			if ($_POST['num_of_ingredients'] == '') { // parametri za recipe_ingrs
				$i = 1;
			}else{
				$i = $_POST['num_of_ingredients'];
			}
			$ingarr = '';
			$ingidarr = ',';
			for ($s=1; $s <= $i ; $s++) { 
				if ($_POST['kolicina'. $s] == '') {
					$_POST['kolicina'. $s] = 0;
				}
				$ingarr .= $_POST['ingredients'. $s].','. $_POST['kolicina'. $s].','.$_POST['units'. $s].'/';
				$ingidarr .=$_POST['ingredients'. $s].',';
			}
			$ing = trim($ingarr, "/"); // pripremanje ingridients, kolicine, units stringa za upis
			//$ingid = trim($ingidarr, ","); // kraj parametara recipe_ingrs
			//echo $ingid;

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

			$image = $_POST['images_id']; // slike
			$imagearr = trim($image, ",");


			$this->query('INSERT INTO recipes (recipe_title, description, prep_time, dirty_dishes, instructions, status, recipe_cats, recipe_ingrs, recipe_ingrs_id, recipe_photos, user_id) VALUES (:recipe_title, :description, :prep_time, :dirty_dishes, :instructions, :status, :recipe_cats, :recipe_ingrs, :recipe_ingrs_id, :recipe_photos, :user_id)');
			$this->bind(':recipe_title', $_POST['name_recipes']);
			$this->bind(':description', $_POST['descriptions']);
			$this->bind(':prep_time', $_POST['time']);
			$this->bind(':dirty_dishes', $_POST['drty']);
			$this->bind(':instructions', $_POST['recept']);
			$this->bind(':status', 1);
			$this->bind(':recipe_cats', $cat);
			$this->bind(':recipe_ingrs', $ing);
			$this->bind(':recipe_ingrs_id', $ingidarr);
			$this->bind(':recipe_photos', $imagearr);
			$this->bind(':user_id', $_POST['ime']);
			$this->execute();

			header('Location: '.ROOT_URL.'recipes');
		}
	}
	
	public function edit(){
		if (isset($_POST)) {
				//var_dump($_POST);
			}
		$id = $_GET['id'];
		$this->query("SELECT * FROM recipes WHERE recipe_id = '$id'"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;
	}
	
	public function view(){		
		$id = $_GET['id'];
		$this->query("SELECT * FROM recipes WHERE recipe_id = '$id'"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;
	}
	
}