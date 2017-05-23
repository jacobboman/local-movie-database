<?php
namespace App\Controllers;


use App\Models\Movie;

class FrontpageController extends MovieController{

  public function index()
  {
  
    $toplistitems = \App\Models\Movie::orderBy('release_year', 'DESC')->limit(3)->get();

    include "Views/frontpage/index.view.php";

  }
}