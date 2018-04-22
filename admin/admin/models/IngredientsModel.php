<?php
class IngredientsModel extends Model{
	public function Index(){
		if(isset($_POST['submit'])){
			// Insert into MySQL
			$this->query('INSERT INTO ingredients (ingredient_name, status) VALUES (:name, :status)');
			$this->bind(':name', $_POST['ingredient_name']);
			$this->bind(':status', 1);
			$this->execute();
			// Redirect
			header('Location: '.ROOT_URL.'ingredients');
		}elseif(!isset($_POST['submit'])) {
			$this->query('SELECT * FROM ingredients '); // WHERE status >= 1
			$rows = $this->resultSet();
			return $rows;
		}
	}
}
?>