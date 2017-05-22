<?php

class Movie {
	protected $name;
	protected $genre;
	protected $type;
	protected $year;
	protected $country;
	protected $languages;
	protected $length;
	protected $actors; //En film >=2 skådspelare!
	protected $directors;
	protected $producers;
	protected $photo;
	protected $movieURL;
	protected $info;

// new Movie("Love Actually", 2004, "USA", "120");
// new Movie("Love Actually", 2004, "USA", "120", Actors, Directors, Producers);

	public function __construct(string $name, int $year, string $country, int $length, Actors $actors=[], Directors $directors=[], Producers $producers=[]){ //Är dessa egenskaper tvingande???
		$this->name = $name;
		$this->year = $year; //Todo. if "year" is == null, use the "todays date"
		$this->country = $country;
		$this->length = $length;
		$this->actors = $actors;
		$this->directors = $directors;
		$this->producers = $producers;
	}

	public function getName(){
		return $this->name;
	}

	public function getGenre(){
		return $this->genre;
	}

	public function setGenre(string $genre){
		$this->genre = $genre;
	}

	public function getType(){
		return $this->type;
	}

	public function setType(string $type){
		$this->type = $type;
	}

	public function getYear(){
		return $this->year;
	}

	public function getCountry(){
		return $this->country;
	}

	public function setLanguages(string $language){
		$this->languages = $language;
	}

	public function addLanguage($language){
		$this->languages = $language;
	}

	public function getLanguages(){
		return $this->languages;
	}

	public function removeLanguage($languageToRemove){
		foreach ($this->languages as $index=> $language) {
			if ($language === $languageToRemove) {
				array_splice($this->languages, $index);
				return true;
			}
		}
		return false;
	}

	public function addLength($length){
		$this->lengths = $length;
	}

	public function getLength(){
		return $this->length;
	}
	
	public function removeLength($lengthToRemove){
		foreach ($this->lengths as $index=> $length) {
			if ($length === $lengthToRemove) {
				array_splice($this->lengths $index);
				return true;
			}
		}
		return false;
	}

	public function getActors(){
		return $this->actors;
	}

	public function addActor($actor){
		$this->actor = $actor;
	}

	public function removeActor($actorToRemove){
		foreach ($this->actors as $index=> $actor) {
			if ($actor === $actorToRemove) {
				array_splice($this->actors, $index);
				return true;
			}
		}
		return false;
	}

	public function getDirectors(){
		return $this->directors;
	}

	public function addDirector($director){
		$this->director = $director;
	}

	public function removeDirector($directorToRemove){
		foreach ($this->directors as $index=> $director) {
			if ($director === $directorToRemove) {
				array_splice($this->directors, $index);
				return true;
			}
		}
		return false;
	}

	public function getProducers(){
		return $this->producers;
	}

	public function addProducer($producer){
		$this->producer = $producer;
	}

	public function removeProducer($producerToRemove){
		foreach ($this->producers as $index=> $producer) {
			if ($producer === $directorToRemove) {
				array_splice($this->producers, $index);
				return true;
			}
		}
		return false;
	}
	
	public function getPhoto(){
		return $this->Photo;
	}
	public function setPhoto(string $photo){
		$this->photo = $photo;
	}

	public function getMovieURL(){
		return $this->movieURL;
	}

	public function setMovieURL(string $movieURL){
		$this->movieURL = $movieURL;
	}

	public function getInfo(){
		return $this->info;
	}

	public function setInfo(string $info){
		$this->info = $info;
	}
}