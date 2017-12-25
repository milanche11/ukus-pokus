<?php
session_start();

//Include config
require('config.php');

//Loadovanje klasa
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
