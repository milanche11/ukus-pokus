<?php
class DashboardModel extends Model{
	public function Index(){
		$this->query("SELECT * FROM recipes"); 
		$rows = $this->resultSet();
		
		return $rows;

	}
}