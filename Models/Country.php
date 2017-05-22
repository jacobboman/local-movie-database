<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;

class Country extends Model {

	
	public $timestamp = false;

	protected $id;
	protected $name;

	/*public function professional() {
		return $this->belongsTo(Professional::class);
	}*/

	public function movie() {
		return $this->belongsTo(Movie::class);
	}

	public function getName() {
		return $this->name;
	}
}