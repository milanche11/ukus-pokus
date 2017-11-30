<?php

class CategoryModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM categories');
		$catRows = $this->resultSet();
		//print_r($rows);
		return $catRows;
	}	
}