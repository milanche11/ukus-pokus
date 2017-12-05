<?php
class Pagination extends Model {
	public $allrowsPagination; 
	public $returnPagination;
	public $pageid;
	public $brredova;
	public $tablePagination;

	public function allres($tablePagination, $brprikaza , $vrednost){
		$this->tablePagination = $tablePagination;
		$this->brredova = ceil(count($vrednost) / $brprikaza);

		if (!isset($_GET['id'])) {
		  $this->pageid = 1;
		} else {
		   $this->pageid = $_GET['id'];
		}
		$pocetak = ($this->pageid-1) * $brprikaza;
		$this->query("SELECT * FROM $tablePagination LIMIT $pocetak , $brprikaza"); 
		$this->allrowsPagination = $this->resultSet();
		return array($this->allrowsPagination);
	}

	public function printPagination(){

		for ( $this->pageid=1; $this->pageid<=$this->brredova; $this->pageid++) {
		  $this->returnPagination .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tablePagination."/".$this->pageid."'>" . $this->pageid . "</a>";
		}
		return $this->returnPagination;
	}
}

?>

