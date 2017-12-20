<?php

include ('../config.php');
include ('../classes/Ajax.php');
include ('../classes/Database.php');
include ('../classes/Model.php');
include ('../classes/Query.php');

$ajax = new Ajax();
$database = new Database();


if (isset($_POST['data'])) {

	print_r($_POST);

	if(isset($_POST['cat'])){
		print_r($_POST['cat']);
	}
	
	$data = $_POST['data'];
	$query = "";

	  foreach ($data as $row) {

      $query .= "recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
   
    }

    	$query= rtrim($query, "AND ");
		
		$database->query("SELECT * FROM recipes WHERE ". $query );

		$recRows = $database->resultSet();

		$numberRecipes = count($recRows);

		echo "<h4 class='text-center'>Ukupno recepata koji sadrže tražene namirnice : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4><br>";

		if($numberRecipes > 0){
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

		foreach ($recRows as $item) {
        echo '<p>';

        $id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
        $id = str_replace(" ", "-", $id);
        $id = $ajax->convertExtendedToNormal($id);
        
		echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
        echo "</p>";
        }
        echo "<hr><br><p class='text-center'>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";

    } 
} 







