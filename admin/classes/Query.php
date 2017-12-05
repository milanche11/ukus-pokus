<?php

class Query extends Model {

	public function allquery($table_name) {
		$this->query("SELECT * FROM $table_name WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}

	public function soloquery($table_name, $tablename_id, $id) {
		$this->query("SELECT * FROM $table_name WHERE {$tablename_id} = '$id'"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;	
	}
	
	public function specified($table_name, $column, $value) {
		$this->query("SELECT * FROM $table_name WHERE $column = '$value'"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}
		
}