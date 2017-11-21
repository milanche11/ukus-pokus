<?php

class RecipeModel extends Model{
	
	public function Index(){

		$this->query('SELECT * FROM recipes ORDER BY posting_time DESC');
		$rows = $this->resultSet();
		//print_r($rows);
		return $rows;
	}

	public function add(){
		//sanitize POST

		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if($post['submit']){

			if($post['title'] == '' || $post['body'] == '' || $post['link'] == ''){
			Messages::setMsg('Please, fill in all fields.', 'error') ;
			return;
			}

			//insert into mysql

			$this->query('INSERT INTO shares (title, body, link, user_id) VALUES(:title, :body, :link, :user_id) ');
			$this->bind(':title', $post['title']);
			$this->bind(':body', $post['body']);
			$this->bind(':link', $post['link']);
			$this->bind(':user_id', $_SESSION['user_id']);
			$this->execute();

			//verify

			if($this->lastInsertId()){
				//redirect
				header('Location:' . ROOT_URL . 'shares');
			}
		}

		return;
	}
}