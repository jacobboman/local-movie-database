<?php

namespace App\Controllers;

class ProfessionalController extends Controller {

  public function index() {

    $professionals = \App\Models\Professional::get();

    $page_title = "Profesisonals";
    
    include "Views/professional/index.view.php";
  }

  public function show($pro_id) {

    $professional = \App\Models\Professional::find($pro_id);

    $actor_in = $professional->movies()->where('actor', 1)->get();

    $director_in = $professional->movies()->where('director', 1)->get();

    $page_title = $professional->name;

    include "Views/professional/show.view.php";
  }

}

