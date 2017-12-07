<?php

class Query extends Model {
	
	public function allRows($tablename, $querystring){
		$this->query("SELECT * FROM $tablename WHERE (status = 1) $querystring");
		$rows = $this->resultSet();
		return $rows;
	}

	public function singleRow($tablename,$querystring){
		$this->query("SELECT * FROM $tablename WHERE (status = 1) AND ($querystring)");
		$row = $this->single();
		return $row;
	}
}
