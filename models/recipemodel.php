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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
			//$id = substr($id, strripos($id, "-")+1);
			//echo $id;
=======
		
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
=======
		
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
=======
		
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
				$this->bind(':comment_name', $ime);
				$this->bind(':comment_email', $email);
				$this->bind(':comment_text', $komentar);
				$this->bind(':recipe_id', $recipeid);
=======
=======
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
=======
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
				$this->bind(":comment_name",$ime);
				$this->bind(":comment_email",$email);
				$this->bind(":comment_text",$komentar);
				$this->bind(":recipe_id",$recipeid);
>>>>>>> 501b36efa251f10de3a538f69b1d800e010ac8af
				$this->execute();

			
			}
		} 
	}
	




}