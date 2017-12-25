<?php
class Setings extends Controller{
	protected function Index(){
		$viewmodel = new SetingsModel();
		$this->returnView($viewmodel->Index(), true);
	}
}