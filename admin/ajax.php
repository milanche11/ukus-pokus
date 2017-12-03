<?php
include("config.php");

require_once('classes/Model.php');

class Dbconect extends Model{}

$db = new Dbconect;

if(isset($_GET['action'])){
	
	$action = strip_tags($_GET['action']);
	
	if($action == "edit" || $action == "delete" || $action == "activate"){	// za dugmice "edit", "delete" i "activate"
	
		$table_name = strip_tags($_GET['table']);
		$row = strip_tags($_GET['row']);
		$value = strip_tags($_GET['value']);
		$edited_column = strip_tags($_GET['edited_column']);
		$new_value = strip_tags($_GET['new_value']);
		
		$db->query("UPDATE $table_name SET $edited_column=:new_value WHERE $row='$value'");
		$db->bind(':new_value', $new_value);
		$db->execute();
			
		echo $action;	
	}
}



if ($_POST["label"]) { //UPLOAD slika
    $label = $_POST["label"];
	$title = $_POST["title"];
	$alt = $_POST["alt"];

	$allowedExts = array("gif", "jpeg", "jpg", "png");
	$temp = explode(".", $_FILES["file"]["name"]);
	$extension = end($temp);
	if ((($_FILES["file"]["type"] == "image/gif")
		|| ($_FILES["file"]["type"] == "image/jpeg")
		|| ($_FILES["file"]["type"] == "image/jpg")
		|| ($_FILES["file"]["type"] == "image/pjpeg")
		|| ($_FILES["file"]["type"] == "image/x-png")
		|| ($_FILES["file"]["type"] == "image/png"))
		&& ($_FILES["file"]["size"] < 200000)
		&& in_array($extension, $allowedExts)) {
		if ($_FILES["file"]["error"] > 0) {
			echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
		} else {
	   
			$filename = $title.".".$extension;
			$link = "assets/images/".$filename;


			if (file_exists("../".$link)) {
				$filename = $filename . "-". rand(8,100);
			} else {
				move_uploaded_file($_FILES["file"]["tmp_name"],
			   "../".$link);

				$db->query("INSERT INTO photos (photo_title, photo_alt, photo_link, status) VALUES (:filename, :alt, :link, :status)");
				$db->bind(':filename', $title);
				$db->bind(':alt', $alt);
				$db->bind(':link', $filename);
				$db->bind(':status', 1);
				$db->execute();
				$id = $db->lastInsertId();
				echo $id;
			}
		}
	} else {
		echo "Invalid file";
	}
}
?>