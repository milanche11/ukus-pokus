<?php

class Query extends Model {

	public function allquery($imeTabele) {
		$this->query("SELECT * FROM $imeTabele WHERE status >= 1"); // WHERE status >= 1
		$rows = $this->resultSet();
		return $rows;	
	}

	public function soloquery($imeTabele, $tablenameid, $id) {
		$this->query("SELECT * FROM $imeTabele WHERE {$tablenameid} = '$id'"); // WHERE status >= 1
		$rows = $this->single();
		return $rows;	
	}
		
}