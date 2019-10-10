<?php
include("config.php");

require_once('classes/Model.php');
require_once('classes/Query.php');
class Dbconect extends Model{}

$db = new Dbconect;
$query = new Query;

if(isset($_GET['action'])){
	
	$action = strip_tags($_GET['action']);
	$table_name = strip_tags($_GET['table']);
	$row = strip_tags($_GET['row']);
	$value = strip_tags($_GET['value']);
	$edited_column = strip_tags($_GET['edited_column']);
	$new_value = strip_tags($_GET['new_value']);
	
	if($action == "edit" || $action == "delete" || $action == "activate"){	// za dugmice "edit", "delete" i "activate"
	
		$db->query("UPDATE $table_name SET $edited_column=:new_value WHERE $row='$value'");
		$db->bind(':new_value', $new_value);
		$db->execute();
			
		echo $action;	
	}
	
	if($action == "remove"){
		$db->query("DELETE FROM $table_name WHERE $row='$value'");
	//	$db->bind(':photo_id', $id);
		$db->execute();
		echo "Removed".$table_name." / ".$row." / ".$value;
	}
	
	if($action == "delPhoto"){ //Briasanje slike u "recipes/edit"
		$id = strip_tags($_GET["id"]); 
		
		$photo_link = $query->soloquery("photos", "photo_id", $id);
		
		if(file_exists('../assets/images/'.$photo_link["photo_link"])){
		/*	unlink('../assets/images/'.$photo_link["photo_link"]);
			$db->query("DELETE FROM photos WHERE photo_id='$id'");
			$db->bind(':photo_id', $id);
			$db->execute();
		*/
			echo 1;
		}
		else{
			echo 2;
		}
	}
}



if(isset($_POST["title"])) { //UPLOAD slika

	if(isset($_POST["name_recipe"])){
		$name_recipe = str_replace(' ','_',$_POST["name_recipe"]); //umesto razmaka stavlja se donja crta
		$name_recipe = $query->normalize($name_recipe); //ciscenje stinga od "latin extended-a"
	}
	if(isset($_POST["title"])){$title = $_POST["title"];}
	if(isset($_POST["alt"])){$alt = $_POST["alt"];}
	$max_size = 1500000; // 1.500.000B = 1.5MB
	
	$allowedExts = array("gif", "jpeg", "jpg", "JPG", "JPEG", "png");
	$temp = explode(".", $_FILES["file"]["name"]);
	$extension = end($temp);
	if ((($_FILES["file"]["type"] == "image/gif")
		|| ($_FILES["file"]["type"] == "image/jpeg")
		|| ($_FILES["file"]["type"] == "image/jpg")
		|| ($_FILES["file"]["type"] == "image/pjpeg")
		|| ($_FILES["file"]["type"] == "image/x-png")
		|| ($_FILES["file"]["type"] == "image/png"))
		&& ($_FILES["file"]["size"] < $max_size)
		&& in_array($extension, $allowedExts)) {
			
		if ($_FILES["file"]["error"] > 0) {
			echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
		} 
		else {
	   
			$filename = $name_recipe."_".$title.".".$extension;
			$link = "assets/images/".$filename;


			if (file_exists("../".$link)) {
				echo "File name alredy exists";
			//	$filename = $filename . "-". rand(8,100);
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
		echo "Invalid file. ";
		if($_FILES["file"]["size"] > $max_size){ // ako je fajl veci od maksimalne velicine koju smo odredili ($max_size)
			$max_size = round($max_size/1000000,2); //pretvaranje bajta u megabajte sa dve decimale 
			echo "File size is larger then ".$max_size."MB";
		}
	}
}


?>