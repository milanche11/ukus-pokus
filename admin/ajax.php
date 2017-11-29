<?php
include("config.php");

require_once('classes/Model.php');

class Dbconect extends Model{}

$db = new Dbconect;

if(isset($_GET['action'])){
	
	$action = $_GET['action'];
	$table_name = $_GET['table'];
	$row = $_GET['row'];
	$value = $_GET['value'];
	
	if($action == "delete"){
		$db->query("UPDATE $table_name SET status=:status WHERE $row='$value'");
		$db->bind(':status', 0);
		$db->execute();
			
		echo "obrisano";
	}

	if($action == "activate"){		
			
		$db->query("UPDATE $table_name SET status=:status WHERE $row='$value'");
		$db->bind(':status', 1);
		$db->execute();
			
		echo "Aktivirano";
	}
	
	if($action == "edit"){	
		echo "EDIT EDIT EDIT";
	/*		
		$db->query("UPDATE $table_name SET status=:status WHERE $row='$value'");
		$db->bind(':status', 1);
		$db->execute();
			
		echo "Aktivirano";
	*/
	}

}
	
?>