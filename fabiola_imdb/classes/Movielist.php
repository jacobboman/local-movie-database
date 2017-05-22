<?php

class MovieList {

	protected $name;
	protected $user;
	protected $movies;
	protected $public;
	
	public function __construct(string $name, User $user, array $movies=[], bool $public = false) {
		$this->name = $name;
		$this->user = $user;
		$this->movies = $movies;
		$this->public = $public; //Denna egenskap ska vara för att "user" ska kunna leta efter andras "Movielist"
	}

	/**
	* @todo : implement this when we have a databas connection
	*/
	public function delete(){ 
		return false;
	}

	public function getUser(){
		return $this->user;
	}
	
	public function getName(){
		return $this->name;
	}

	public function setName($name){
		$this->name = $name;
	}

	public function addMovie(Movie $movie) { //Ska jag använda "array" här???
		$this->movies[] = $movie;

	}

	public function getMovies() {
		return $this->movies;
	}

	public function removeMovie(Movie $movieToRemove) {
		foreach ($this->movies AS $index=>$movie) { //först, loppar man
			if ($movie === $movieToRemove) { //sen "villkor"
				array_splice($this->movies, $index) //sist tabort metod
				return true;
			} 
		}
		return false;
	}

	public function isPublic() {
		return $this->public;
	}

	public function setPublic(bool $public) {
		$this->public = $public;
	}
}





