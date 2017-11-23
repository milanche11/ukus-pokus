<?php

class SearchModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM recipes');
		$recipeRows = $this->resultSet();
		//print_r($rows);
		return $recipeRows;
	}


}