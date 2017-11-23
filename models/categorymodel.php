<?php

class CategoryModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM categories');
		$catRows = $this->resultSet();
		//print_r($rows);
		return $catRows;
	
	}

	public function Pretraga(){
			
			$this->query('SELECT * FROM recipes');
			$recipeRows = $this->resultSet();
			//print_r($recipeRows);
			return $recipeRows;

			
		}
}