<?php
include("config.php");

require_once('classes/Model.php');

class Del extends Model{}

$db = new Del;

if(isset($_GET['table'])){
	
	$table_name = $_GET['table'];
	$row = $_GET['row'];
	$value = $_GET['value'];
	
	$db->query("UPDATE $table_name SET status=:status WHERE $row='$value'");
	$db->bind(':status', 0);
	$db->execute();
		
	echo "obrisano";
}
	
?>