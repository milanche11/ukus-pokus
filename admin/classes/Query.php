<?php

class Query extends Model {

	public function listAllcategories() {
		$this->query("SELECT * FROM categories WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}

	public function listAllingredients() {
		$this->query("SELECT * FROM ingredients WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}

	public function listAllusers() {
		$this->query("SELECT * FROM users WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;	
	}
	public function listAllrecipes() {
		$this->query("SELECT * FROM recipes WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}

}
