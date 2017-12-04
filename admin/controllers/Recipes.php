<?php
class Recipes extends Controller{
	protected function Index(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->Index(), true);
	}
	protected function insert(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->insert(), true);
	}
	protected function view(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->view(), true);
	}
	protected function edit(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->edit(), true);
	}
	
}