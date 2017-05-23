<?php

namespace App\Controllers;

class MovieController extends Controller {

	public function index() {
		$movies = \App\Models\Movie::get();

		$page_title = "Movies";
		include "Views/movie/index.view.php";
	}

	public function show($movie_id) {
		// $movie = \App\Models\Movie::get();
		$movie = \App\Models\Movie::find($movie_id);
		$actors = $movie->professionals()->where('actor', 1)->get();		

		$directors = $movie->professionals()->where('director', 1)->get();

		$page_title = $movie->name;
		include "Views/movie/show.view.php";
	}
}

