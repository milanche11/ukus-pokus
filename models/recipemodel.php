<?php

class RecipeModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM recipes ORDER BY posting_time DESC');
		$recipeRows = $this->resultSet();
		//print_r($rows);
		return $recipeRows;
	}


}