<?php

class Query extends Model {
	
	public function allResults($tablename){
		$this->query("SELECT * FROM $tablename WHERE status >= 1");
		$rows = $this->resultSet();
		return $rows;
	}

	public function oneResult($tablename,$columnname,$refid){
		$this->query("SELECT * FROM $tablename WHERE '$columnname'='$id'");
		$row = $this->single();
		return $row;
	}

}