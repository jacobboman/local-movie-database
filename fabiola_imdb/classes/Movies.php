<?php

//skapar en ny klass "Movies" som ska innehålla alla "movies" i arrayen "Movielist"

class Movies {

	protected $movies;

	public function __construct() {
		$this->movies = [];

	public function addMovie(Movies $movies) {
		$this->movies[] = $movie;
		}

	public function getMovies(){
		return $this->movies;
	}

	public function removeMovie(Movies $movieToRemove) {
		foreach($this->movies AS $index=>$movie) {
			if($movie === $movieToRemove) {
				array_splice($this->movies, $index);
				echo true;
			}
		}
		return false;
	}
}

