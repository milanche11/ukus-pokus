<?php
class Recipes extends Controller{
	protected function Index(){
		$viewmodel = new RecipesModel();
		$this->returnView($viewmodel->Index(), true);
	}
}