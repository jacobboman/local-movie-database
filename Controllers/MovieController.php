<?php

namespace App\Controllers;

class MovieController extends Controller {

	public function index() {
		$movies = \App\Models\Movie::get();

		$page_title = "Movies";
		include "views/movie/index.view.php";
	}

	public function show($movie_id) {
		$movie = \App\Models\Movie::find($movie_id);
		$moviecountry = $movie->country_id;
		$country = \App\Models\Country::find($moviecountry);

		$page_title = $movie->name;
		include "views/movie/show.view.php";
	}

}

