<?php

class HomeModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM ingredients ORDER BY ingredient_name ASC');
		$ingrRows = $this->resultSet();
		//print_r($ingrRows);
		return $ingrRows;


	}





}	