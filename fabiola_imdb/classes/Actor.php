<?php

// Vi skapar egenskaper som "protected" för att användaren ska inte kunna ändra den från "utsidan"
class Actor {

	protected $name;
	protected $age;
	protected $country;
	protected $movies;
	protected $photo;
	protected $info;

	//Vi skapar en "constructor" så att vår klass "Actor" ska finnas. 

	public function __construct(string $name, $movies =[]) { // Denna metod måste vara "public" för att kunna kalla det från utsidan.
		$this->name = $name;  //just den här actors namn.
		$this->movies = $movies;
	}

	//Metoden "get" hämta ut data från en "class" som har "protected" egenskaper. Inga parametrar här, eftersom vi ska hämta ut data och EJ sätta nytt, däremot "return" metoden ska anges för att få något värde.
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





