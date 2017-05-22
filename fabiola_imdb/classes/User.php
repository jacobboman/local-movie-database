<?php

class User {

	protected $name;
	protected $subscriptionActive;
	protected $movielists;

	public function __contruct(string $name, bool $subscriptionActive = false, array $movielists = []) { //parametrer som innebär "alternativ" måste finnas i slutet för att kunna använda dess standard värde och utelämna dem om man vill.

	$this name-> $name;
	$this subscriptionActive-> $subscriptionActive;
	$this movielists-> $movielists;
	}

	public function getName(){
		return $this->name;
	}

	public function setName(string $name){
		$this->name = $name;
	}

	public function createMovielist(string $name){
		$this->movielist[] = new Movielist($this, $name);
	}

	public function deleteMovielist(Movielist $movielistToDelete){
		foreach ($this->movielists AS $index=>$movielist){
			if ($movielist === $movielistToDelete){
				$movielistToDelete->delete(); //metod för att ta bort listan från databasen.
				array_splice($this->movielists, $index)
				return true;
			}
		}
		return false;
	}

	public function getMovielists(){
		return $this->movielists;
	}

	public function isSubscriptionActive(){
		return $this->subscriptionActive;
	}

	public function setSubscriptionActive($subscriptionActive){
		$this->name = $name;
		$this->subscriptionActive = $subscriptionActive;
	}


	
}





