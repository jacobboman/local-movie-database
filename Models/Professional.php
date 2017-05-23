<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;

class Professional extends Model {

	protected $fillable = ["name", "birth_year", "gender"];
	// public $timestamp = false;

	protected $primaryKey = "pro_id";
	protected $name;
	protected $pro_id;
	protected $birth_year;
	protected $gender;

	public function movies() {
		return $this->belongsToMany(Movie::class, 'movie_professional', 'pro_id', 'movie_id')->withPivot('actor', 'director');
	}

}