<?php

class Recipes extends Controller {

	protected function Index(){
		$viewmodel = new RecipeModel();
		$this->ReturnView($viewmodel->Index(), true);
	}


	//Adding new recipe

	protected function add(){

		if(!isset($_SESSION['is_logged_in'])){
			header('Location:' . ROOT_URL. "recipes");
		}
		
		$viewmodel = new RecipeModel();
		$this->ReturnView($viewmodel->add(), true);
	}
}