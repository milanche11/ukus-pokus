<?php
class CategoriesModel extends Model{
	public function Index(){
		if(isset($_POST['submit'])){
			// Insert into MySQL
			$this->query('INSERT INTO categories (cat_name, status) VALUES (:name, :status)');
			$this->bind(':name', $_POST['cat_name']);
			$this->bind(':status', 1);
			$this->execute();
			// Redirect
			header('Location: '.ROOT_URL.'categories');
		}elseif(!isset($_POST['submit'])) {
			$this->query('SELECT * FROM categories '); // WHERE status >= 1
			$rows = $this->resultSet();
			return $rows;
		}

	}

}