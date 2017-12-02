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

	public function photos($id){
		$this->query("SELECT * FROM photos WHERE " . $id);
		$photos = $this->resultSet();
		return $photos;
	}

	public function categories(){
		$this->query("SELECT * FROM categories " );
		$categories = $this->resultSet();
		return $categories;
	}
	


}