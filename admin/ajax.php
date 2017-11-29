<?php
include("config.php");

require_once('classes/Model.php');

class Dbconect extends Model{}

$db = new Dbconect;

if(isset($_GET['action'])){
	
	$action = strip_tags($_GET['action']);
	$table_name = strip_tags($_GET['table']);
	$row = strip_tags($_GET['row']);
	$value = strip_tags($_GET['value']);
	$edited_column = strip_tags($_GET['edited_column']);
	$new_value = strip_tags($_GET['new_value']);
	

	if($action == "edit" || $action == "delete" || $action == "activate"){	
		
		$db->query("UPDATE $table_name SET $edited_column=:new_value WHERE $row='$value'");
		$db->bind(':new_value', $new_value);
		$db->execute();
			
		echo $action;
	
	}

}

?>