<?php

include ('../config.php');
include ('../classes/Ajax.php');
include ('../classes/Database.php');
include ('../classes/Model.php');
include ('../classes/Query.php');

$ajax = new Ajax();
$database = new Database();

$data = $posude = $kategorije = $vreme = $rejting = "%";
$mouseover = '"#28a745"';
$mouseout = '"#212121"';

if(isset($_POST['data']) && $_POST['data'] !="" && $_POST['data'] != null){
	$data = $_POST['data'];
	echo "Namirnice: ";
	print_r($data);
}

if(isset($_POST['posude']) && $_POST['posude'] !="" && $_POST['posude'] != null){
	$posude = $_POST['posude'];
	echo "Posude: ";
	print_r($posude);
}

if(isset($_POST['kategorije']) && $_POST['kategorije'] !="" && $_POST['kategorije'] != null){
	$kategorije = $_POST['kategorije'];
	echo "Kategorije: ";
	print_r($kategorije);
}

if(isset($_POST['vreme']) && $_POST['vreme'] !="" && $_POST['vreme'] != null){
	$vreme = $_POST['vreme'];
	echo "Vreme: ";
	print_r($vreme);
}

if(isset($_POST['rejting']) && $_POST['rejting'] !="" && $_POST['rejting'] != null){
	$rejting = $_POST['rejting'];
	echo "Rejting: ";
	print_r($rejting);
}


if(isset($_POST['data'])){

	$query = "(";
	foreach ($data as $row) {
	 $query .= "recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
 	}
	$query= rtrim($query, "AND ");
	$query .= ")";
	$database->query("SELECT * FROM recipes WHERE (status = 1) AND $query ");
	$recRows = $database->resultSet();
	$numberRecipes = count($recRows);

	echo "<h4 class='text-center'>Ukupno recepata koji sadrže tražene namirnice : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4><br>";

	if($numberRecipes > 0){	

	foreach ($recRows as $item) {
    			echo '<p>';
	             $id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
	             $id = str_replace(" ", "-", $id);
	             $id = $ajax->convertExtendedToNormal($id);	        
		echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a></p>";
    		}

    		echo "<hr><br><p class='text-center'>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";

	}
}







