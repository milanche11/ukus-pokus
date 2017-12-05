<?php
class Pagination extends Model {
	public $rows1; 
	public $rew1;
	public $page1;
	public $brredova;
	public $tabela;

	public function allres($tabela, $brprikaza , $vrednost){
		$this->tabela = $tabela;
		$this->brredova = ceil(count($vrednost) / $brprikaza);

		if (!isset($_GET['id'])) {
		  $this->page1 = 1;
		} else {
		   $this->page1 = $_GET['id'];
		}
		$pocetak = ($this->page1-1)*$brprikaza;
		$this->query("SELECT * FROM $tabela LIMIT $pocetak , $brprikaza"); 
		$this->rows1 = $this->resultSet();
		return array($this->rows1);
	}

	public function ispis(){

		for ( $this->page1=1; $this->page1<=$this->brredova; $this->page1++) {
		  $this->rew1 .=  "<a class='page-link' href='".ROOT_URL. "" .$this->tabela."/".$this->page1."'>" . $this->page1 . "</a>";
		}
		return $this->rew1;
	}
}

?>

