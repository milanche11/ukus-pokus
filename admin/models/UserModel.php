<?php
class UserModel extends Model{
	public function register(){
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if(isset($post['submit'])){
			if($post['name'] == '' || $post['email'] == '' || $post['password'] == '' || $post['username'] == ''){
				Messages::setMsg('Please Fill In All Fields', 'error');
				return;
			}

			$password = md5($post['password']);
			// Insert into MySQL
			$this->query('INSERT INTO users (user_name, user_email, username, password, status) VALUES (:name, :email, :username, :password, :status)');
			$this->bind(':name', $post['name']);
			$this->bind(':email', $post['email']);
			$this->bind(':username', $post['username']);
			$this->bind(':password', $password);
			$this->bind(':status', $post['status']);
			$this->execute();
			print_r($post);
			// Verify
			if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'users/viev');
			}
		}
		return;
	}

	public function login(){
		// Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		$password = md5($post['password']);

		if($post['submit']){
			// Compare Login
			$this->query('SELECT * FROM users WHERE user_email = :email AND password = :password');
			$this->bind(':email', $post['email']);
			$this->bind(':password', $password);
			
			$row = $this->single();
			
			if($row){
				$_SESSION['is_logged_in'] = true;
				$_SESSION['user_data'] = array(
					"user_id"	=> $row['user_id'],
					"user_name"	=> $row['user_name'],
					"user_email"	=> $row['user_email'],
					"status"	=> $row['status']
				);
				header('Location: '.ROOT_URL.'dashboard');
			} else {
				Messages::setMsg('Incorrect Login', 'error');
			}
		}
		return;
	}

	public function edit(){
		$id =  $_GET["id"];
		$this->query('SELECT * FROM users WHERE user_id = {$id}');
		$rows = $this->resultSet();
		return $rows;
	}

	public function viev(){
		$this->query('SELECT * FROM users');
		$rows = $this->resultSet();
		return $rows;

	}

}