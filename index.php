<?php
//start session

session_start();

// Boris

//Aja

//Include config

require('config.php');

/*

require('classes/Messages.php');
require('classes/Bootstrap.php');
require('classes/Controller.php');
require('classes/Model.php');


require('controllers/home.php');
require('controllers/recipes.php');
require('controllers/users.php');


require('models/home.php');
require('models/recipe.php');
require('models/user.php');

*/





function autoloadClasses($cname){ 
if(file_exists('classes/'.$cname.".php")){
require_once('classes/'.$cname.".php");
} 
}
function autoloadControllers($cname){
if(file_exists('controllers/'.$cname.".php")){
require_once('controllers/'.$cname.".php");
}
}
function autoloadModels($cname){
if(file_exists('models/'.$cname.".php")){
require_once('models/'.$cname.".php");
}
}
spl_autoload_register('autoloadClasses');
spl_autoload_register('autoloadControllers');
spl_autoload_register('autoloadModels');


$bootstrap = new Bootstrap($_GET);

$controller = $bootstrap->createController();

if($controller){
	$controller->executeAction();
}
