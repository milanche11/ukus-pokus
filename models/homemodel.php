<?php

class HomeModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM ingredients ORDER BY ingredient_name ASC');
		$ingrRows = $this->resultSet();
		//print_r($ingrRows);

		return $ingrRows;

	}

	public function ingredients(){

		if (isset($_POST['submit'])) {

			if (isset($_POST['pretraga'])) {

				$pretraga = $_POST['pretraga'];


				//print_r($_POST['pretraga']);
  			 	return $pretraga;

  			 	
			}

		} 
	}

	public function recipes($id){

		$this->query("SELECT * FROM recipes WHERE ". $id );

		$recRows = $this->resultSet();
		//print_r($recRows);
		return $recRows;

	}


}

	