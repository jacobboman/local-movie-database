<?php

require "bootstrap.php";

$app_name = "local-movie-database";

$route_prefix = "/local-movie-database/";
$routes = [
	'' => 'App\Controllers\FrontpageController',
	'movies/' => 'App\Controllers\MovieController',
  'professionals/' => 'App\Controllers\ProfessionalController'
	
];

$page = (isset($_SERVER['REDIRECT_URL'])) ? $_SERVER['REDIRECT_URL'] : "";


$page = str_replace($route_prefix, "", $page);

if (array_key_exists($page, $routes)) {
	// ladda sida
	$controller = $routes[$page];   
	$ctrl = new $controller();
	$ctrl->process();
} else {
	die("Page could not be found.");
}

