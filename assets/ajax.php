<?php

include ('../config.php');
include ('../classes/Model.php');
include ('../classes/Query.php');
$upit = new Query();

if ($_POST['data'] !=null && $_POST['data'] !="") {

	if (isset($_POST['cat']) && $_POST['cat'] !="" && $_POST['cat'] !=null) {
		$cat = $_POST['cat'];
		$data = $_POST['data'];
		$query = "";
	
  		foreach ($cat as $roww) {
        			 $query .= "recipe_cats like '%" . "," .$roww. "," . "%' AND ";
         			foreach ($data as $row) {
     			 $query .= "recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
   			 }
       		}

        		$query= rtrim($query, "AND ");
		$upit->query("SELECT recipe_id,recipe_title FROM recipes WHERE ". $query );
		$recRows = $upit->resultSet();
		$numberRecipes = count($recRows);
		if(isset($_POST['page'])) {
       			if ($_POST['page'] !=null && $_POST['page'] !="") {
       			$page = $_POST['page'];

       			$start = ($page-1)*4;
       			     			
       		} 
       	}else {
       		$start = 0;
        		}
        $end = 4; 

      	$recRowsSliced = array_slice($recRows,$start,$end);

		echo "<div class='row'>";
		echo "<div class='col-sm-12 text-center'>";
		echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4>";
		echo "</div></div><br><br>";

		if($numberRecipes > 0){	
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRowsSliced as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo " <ul class='pagination pagination-sm justify-content-center'>";
	       		echo printPagination($numberRecipes);
	       		echo "</ul>";
	       		echo "</div></div><br><br>";
    		}

             } else {
             	$data = $_POST['data'];	
		$query = "";
		foreach ($data as $row) {
			$query .= "recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
   		}
	  	$query= rtrim($query, "AND ");
		$upit->query("SELECT recipe_id,recipe_title FROM recipes WHERE ". $query );
		$recRows = $upit->resultSet();
		$numberRecipes = count($recRows);
		if(isset($_POST['page'])) {
       			if ($_POST['page'] !=null && $_POST['page'] !="") {
       			$page = $_POST['page'];

       			$start = ($page-1)*4;
       			     			
       		} 
       	}else {
       			$start = 0;
       		}
       	$end = 4; 

      	$recRowsSliced = array_slice($recRows,$start,$end);

		echo "<div class='row'>";
		echo "<div class='col-sm-12 text-center'>";
		echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>".$numberRecipes ."</span></h4>";
		echo "</div></div><br><br>";

			if($numberRecipes > 0){	
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRowsSliced as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo " <ul class='pagination pagination-sm justify-content-center'>";
	       		echo printPagination($numberRecipes);
	       		echo "</ul>";
	       		echo "</div></div><br><br>";
    		}
    	}
		} else {
			if (isset($_POST['cat']) && $_POST['cat'] !="" && $_POST['cat'] !=null) {
				$cat = $_POST['cat'];		
				$query = "";		
				foreach ($cat as $row) {
		      			$query .= "recipe_cats like '%" . "," .$row. "," . "%' AND ";
		       		}
		       		$query= rtrim($query, "AND ");
				$upit->query("SELECT recipe_id,recipe_title FROM recipes WHERE ". $query );
				$recRows = $upit->resultSet();
				$numberRecipes = count($recRows);
				if(isset($_POST['page'])) {
       			if ($_POST['page'] !=null && $_POST['page'] !="") {
       			$page = $_POST['page'];

       			$start = ($page-1)*4;
       			     			
       		} 
       	}else {
       			$start = 0;
       		}
       		$end = 4; 

      	$recRowsSliced = array_slice($recRows,$start,$end);

				echo "<div class='row'>";
				echo "<div class='col-sm-12 text-center'>";
				echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4>";
				echo "</div></div><br><br>";

				if($numberRecipes > 0){	
					$mouseover = '"#28a745"';
					$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRowsSliced as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo " <ul class='pagination pagination-sm justify-content-center'>";
	       		echo printPagination($numberRecipes);
	       		echo "</ul>";
	       		echo "</div></div><br><br>";
	    			}
        			}
       		}

			
		


       		function printPagination($numberRecipes){
       			
					$returnPagination="";
       				
       				$pages =ceil($numberRecipes / 4);

       			for ($pageid=1; $pageid<=$pages; $pageid++) {


			
				$returnPagination .=  "<a class='page-link' style='color: red; cursor:pointer;' id ='".$pageid."'>" . $pageid . "</a>";
			
		 
		}
			return $returnPagination;
       		}




