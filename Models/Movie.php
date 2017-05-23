<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;

class Movie extends Model {

	protected $fillable = ["name", "release_year", "genre", "country", "language"];
	// public $timestamp = false;

	protected $primaryKey = "movie_id";
	protected $name;
	protected $movie_id;
	protected $release_year;
	protected $length;
	protected $genre;
	protected $country;
	protected $language;

	public function professionals() {
		return $this->belongsToMany(Professional::class, 'movie_professional', 'movie_id', 'pro_id')->withPivot('actor', 'director');
	}

}