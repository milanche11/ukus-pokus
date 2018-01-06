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
		echo "<div class='row'>";
		echo "<div class='col-sm-12 text-center'>";
		echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4>";
		echo "</div></div><br><br>";

		if($numberRecipes > 0){	
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRows as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo "<hr><br><p>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";
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

		echo "<div class='row'>";
		echo "<div class='col-sm-12 text-center'>";
		echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4>";
		echo "</div></div><br><br>";

			if($numberRecipes > 0){	
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRows as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo "<hr><br><p>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";
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

				echo "<div class='row'>";
				echo "<div class='col-sm-12 text-center'>";
				echo "<h4>Ukupno recepata koji ispunjavaju tražene kriterijume : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4>";
				echo "</div></div><br><br>";

				if($numberRecipes > 0){	
					$mouseover = '"#28a745"';
					$mouseout = '"#212121"';

			echo "<div class='row'>";
			echo "<div class='col-sm-12 text-center'>";
			foreach ($recRows as $item) {	        			
				$id= mb_strtolower($item['recipe_id']." ".$item['recipe_title'], 'UTF-8');
				$id = str_replace(" ", "-", $id);
				$id = $upit->convertExtendedToNormal($id);
	        			echo '<p>';
				echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
	        			echo "</p>";
	        		}
	       		echo "<hr><br><p>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";
	       		echo "</div></div><br><br>";
	    			}
        			}
       		}

			
		







