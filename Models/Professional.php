<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Model;

class Professional extends Model {

	protected $fillable = ["name", "dayOfBirth"];
	public $timestamp = false;

	protected $id;
	protected $name;
	protected $dayOfBirth;
	protected $gender;
	

	public function professional() {
		return $this->belongsTo(Movie::class);
	}



}