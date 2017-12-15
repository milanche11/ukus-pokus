<?php
include("config.php");

require_once('classes/Model.php');
require_once('classes/Query.php');
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
	
	if($action = "delPhoto"){ //Briasanje slike u "recipes/edit"
		$id = strip_tags($_GET["id"]);
		$query = new Query;
		
		$photo_link = $query->soloquery("photos", "photo_id", $id);
		
		if(file_exists('../assets/images/'.$photo_link["photo_link"])){
			unlink('../assets/images/'.$photo_link["photo_link"]);
			$db->query("DELETE FROM photos WHERE photo_id='$id'");
		/*	$db->bind(':photo_id', $id);
			$db->execute();
		*/	
			echo "DELETED";
		}
		else{
			echo "SLIKA NE POSTOJI";
		}
	}
}



if(isset($_POST["title"])) { //UPLOAD slika

	if(isset($_POST["lebel"])){$label = $_POST["label"];}
	if(isset($_POST["title"])){$title = $_POST["title"];}
	if(isset($_POST["alt"])){$alt = $_POST["alt"];}

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