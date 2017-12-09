<?php

include '../config.php';

class Database{
	

	protected $dbh;
	protected $error;
	protected $stmt;

	public function __construct(){
		// Set DSN
		$dsn = 'mysql:host='. DB_HOST . ';dbname='. DB_NAME;
		// Set Options
		$options = array(
			PDO::ATTR_PERSISTENT		=> true,
			PDO::ATTR_ERRMODE		=> PDO::ERRMODE_EXCEPTION
		);
		// Create new PDO
		try {
			$this->dbh = new PDO($dsn, DB_USER, DB_PASS, $options);
			$this->dbh->exec("set names utf8");
		} catch(PDOEception $e){
			$this->error = $e->getMessage();
		}
	}

	public function query($query){
		$this->stmt = $this->dbh->prepare($query);
	}

	public function bind($param, $value, $type = null){
		if(is_null($type)){
			switch(true){
				case is_int($value):
					$type = PDO::PARAM_INT;
					break;
				case is_bool($value):
					$type = PDO::PARAM_BOOL;
					break;
				case is_null($value):
					$type = PDO::PARAM_NULL;
					break;
					default:
					$type = PDO::PARAM_STR;
			}
		}
		$this->stmt->bindValue($param, $value, $type);
	}

	public function execute(){
		return $this->stmt->execute();
	}

	public function lastInsertId(){
		$this->dbh->lastInsertId();
	}

	public function resultset(){
		$this->execute();
		return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function single(){
		$this->execute();
		return $this->stmt->fetch(PDO::FETCH_ASSOC);
	}
}


$upit = new Database;


if (isset($_POST['data'])) {

		$data = $_POST['data'];
		$query = "";
		

	  foreach ($data as $row) {

      $query .= "recipe_ingrs_id like '%" . "," .$row. "," . "%' AND ";
   
    }

    	$query= rtrim($query, "AND ");
		

		$upit->query("SELECT * FROM recipes WHERE ". $query );

		$recRows = $upit->resultSet();


		$numberRecipes = count($recRows);

		echo "<h4 class='text-center'>Ukupno recepata koji sadrže tražene namirnice : " . "<span style='color: #28a745 !important; font-size: 2rem;'>" . $numberRecipes ."</span></h4><br>";

		if($numberRecipes > 0){
			$mouseover = '"#28a745"';
			$mouseout = '"#212121"';

		foreach ($recRows as $item) {
        echo '<p>';
        $id=$item['recipe_id'];
        echo "<a href='recipe/$id' class='recipelist' style='color: #212121 !important;' onMouseOver=this.style.color=$mouseover onMouseOut=this.style.color=$mouseout>" . $item['recipe_title'] . " </a>";
        echo "</p>";


        }

        echo "<hr><br><p class='text-center'>Ovde dođe paginacija &nbsp; <strong> 1 ... 5 6 7 8 9 10 11 ... 153 </strong></p>";
    } 


		} 




