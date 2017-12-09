<?php

class RecipeModel extends Model{

	public function Index(){
		$this->query('SELECT * FROM recipes WHERE status=1');
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

	public function comments(){
		if (isset($_POST['submit'])) {
			if ( isset($_POST['ime'])  AND isset($_POST['email']) AND isset($_POST['komentar'])  AND isset($_POST['recipeid']) ) {

				$ime = $_POST['ime']; 
				$email = $_POST['email'];
				$komentar = $_POST['komentar']; 
				$recipeid = intval($_POST['recipeid']);

				$this->query('INSERT INTO comments (comment_name,comment_email,comment_text,recipe_id) VALUES (:comment_name,:comment_email,:comment_text,:recipe_id)');
				$this->bind(":comment_name",$ime);
				$this->bind(":comment_email",$email);
				$this->bind(":comment_text",$komentar);
				$this->bind(":recipe_id",$recipeid);
				$this->execute();

			
			}
		} 
	}
	




}