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
		return $this->allrowsPagination;
	}

	public function printPagination(){
			// ako je strana veca od 1 prikazuje Prva i Predhodna
		if ($_GET['id'] > 1) { 
			$this->returnPagination .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tablePagination."/1'> Prva </a>";
			 $this->returnPagination .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tablePagination."/".($this->pageid-1)."'> < </a>";
			 if ($_GET['id'] > 4) { 
			 $this->returnPagination .=  "<a class='page-link'> ... </a>";}
		}

		if ($_GET['id']>3) {
			if ($_GET['id']>($this->brredova-3)){
				$start = $_GET['id'] - 3;
		 		$end = $this->brredova;
			} else {
				$start = $_GET['id'] - 3;
		 		$end = $_GET['id'] + 3;
			}	
		 } else {
		 	$start = 1;
		 	$end = 7;
		 }

		for ( $this->pageid = $start; $this->pageid<=$end; $this->pageid++) {


			if ($_GET['id'] == $this->pageid) {
				$this->returnPagination .=  "<a class='page-link' style='color: red;' href='".ROOT_URL. "" .$this->tablePagination."/".$this->pageid."'>" . $this->pageid . "</a>";
			}else{
				 $this->returnPagination .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tablePagination."/".$this->pageid."'>" . $this->pageid . "</a>";
			}
		 
		}

		if ($_GET['id'] < $this->brredova) { 
			  if ($_GET['id'] < $this->brredova - 3) { $this->returnPagination .=  "<a class='page-link'> ... </a>";}
			 $this->returnPagination .=  "<a class='page-link' title='Next' href='".ROOT_URL. "" .$this->tablePagination."/".($_GET['id']+1)."'> > </a>";
			 $this->returnPagination .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tablePagination."/".$this->brredova."'> Poslednja <span class='badge badge-primary'>". $this->brredova ."</span></a>";
		}

		return $this->returnPagination;
	}
}

?>