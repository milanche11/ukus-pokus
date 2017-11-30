<?php
class CategoriesModel extends Model{
	public function Index(){

		if(isset($_POST['submit'])){
			$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
			if ($post['cat_name'] == '') {
				Messages::setMsg('Potrebno je popuniti polje name', 'error');
			}else{
			// Insert into MySQL
			$this->query('INSERT INTO categories (cat_name, status) VALUES (:name, :status)');
			$this->bind(':name', $_POST['cat_name']);
			$this->bind(':status', 1);
			$this->execute();
			
			// Redirect
			header('Location: '.ROOT_URL.'categories');

			}
	
		}elseif(isset($_POST['delete'])){
			$this->query('UPDATE categories SET status = :status WHERE cat_id = :id');
			$this->bind(':id', $_POST['delete']);
			$this->bind(':status', 0);
			$this->execute();
			// Redirect	
			header('Location: '.ROOT_URL.'categories');

		}elseif(isset($_POST['activate'])){
			$this->query('UPDATE categories SET status = :status WHERE cat_id = :id');
			$this->bind(':id', $_POST['activate']);
			$this->bind(':status', 1);
			$this->execute();
			// Redirect	
			header('Location: '.ROOT_URL.'categories');

		}
			$this->query('SELECT * FROM categories ORDER BY categories . status DESC'); // WHERE status >= 1
			$rows = $this->resultSet();
			return $rows;
	
	}
}