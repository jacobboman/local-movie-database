<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;

class Movie extends Model {

	protected $fillable = ["name", "releaseDate", "coverPhoto", "trailerURL", "genre_id", "country_id", "language_id"];
	public $timestamp = false;

	protected $id;
	protected $releaseDate;
	protected $coverPhoto;
	protected $trailerURL;
	protected $genre_id;
	protected $country_id;
	protected $language_id;

	/*public function professional() {
		return $this->belongsTo(Professional::class);
	}*/
	public function country() {
		return $this->hasOne(Country::class);
	}
		/*return $this->hasManyThrough('App\Genre', 'App\Countrey', 'App\Language');*/


}