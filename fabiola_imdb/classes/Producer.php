<?php

class Producer {

	protected $name;
	protected $country;
	protected $movies;
	protected $photo;
	protected $info;

	public function __construct(string $name, $movies =[]){
		$this->name = $name;
		$this->movies = $movies;
	}

	public function getName(){
		return $this->name;
	}

	public function setName(string $name){
		$this->name = $name;
	}

	public function getCountry(){
		return $this->country;
	}

	public function setCountry(string $country){
		$this->country = $country;
	}

	public function getPhoto(){
		return $this->photo;
	}

	public function setPhoto(string $photo){
		$this->photo = $photo;
	}

	public function setMovies(string $movie){
		$this->movies = $movie;
	}

	public function addMovie($movie){
		$this->movies[]  = $movie;
	}

	public function getMovies(){
		return $this->movies;
	}

	public function removeMovies($movieToRemove){
		foreach ($this->movies as $index=> $movie) {
			if ($movie === $movieToRemove) {
				array_splice($this->movies, $index);
				return true;
			}
		}
		return false;
	}


	public function getInfo(){
		return $this->info;
	}

	public function setInfo(string $info){
		$this->info = $info;
	}
}





