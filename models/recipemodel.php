<?php

class RecipeModel extends Model{

	public function Index(){
		$this->query('SELECT * FROM recipes');
		$recipeRow = $this->single();
		//print_r($rows);
		return $recipeRow;
	}

	public function getid(){
		if (isset($_GET['id'])) {
			$id = $_GET['id'];
			//echo $id;
		 	return $id;
		}
	} 

	public function recipe($id){
		$this->query("SELECT * FROM recipes WHERE  recipe_id=$id AND status=1" );
		$recipe = $this->single();
		//print_r($recRows);
		return $recipe;
	}

	public function photos($ids){
		$this->query("SELECT * FROM photos WHERE " . $ids );
		$photos = $this->resultSet();
		return $photos;
	}

	public function categories($petar){
		$this->query("SELECT * FROM categories WHERE " . $petar );
		$categories = $this->resultSet();
		return $categories;
	}

	public function units(){
		$this->query("SELECT * FROM units WHERE status=1");
		$units = $this->resultSet();
		return $units;
	}

	public function ingrs($ids){
		$this->query("SELECT * FROM ingredients WHERE ingredient_id=$ids AND status=1" );
		$ingrs = $this->single();
		return $ingrs;
	} 


	


}