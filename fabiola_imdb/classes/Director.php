<?php

class Director {

	protected $name;
	protected $age;
	protected $country;
	protected $movies;
	protected $photo;
	protected $info;

	public function __construct(string $name, $movies =[]){
		$this->name = $name;
		$this->movies = $movie;
	}

	public function getName(){
		return $this->name;
	}

	public function setName(string $name){
		$this->name = $name;
	}

	public function getAge(){
		return $this->age;
	}

	public function setAge(int $age){
		$this->age = $age;
	}

	public function getCountry(){
		return $this->country;
	}

	public function setCountry(string $country){
		$this->country = $country;
	}

	public function setMovies(string $movie){
		$this->movies = $movie;
	}

	public function addMovies($movie){
		$this->movies = $movie;
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

	public function getPhoto(){
		return $this->photo;
	}

	public function setPhoto(string $photo){
		$this->photo = $photo;
	}

	public function getInfo(){
		return $this->info;
	}

	public function setInfo(string $info){
		$this->info = $info;
	}
}





