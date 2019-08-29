<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bond extends Model
{
    protected $fillable = ["name", "dob"];

    public function films()
    {
        return $this->hasMany(Film::class);
    }
}
