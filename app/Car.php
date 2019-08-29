<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    protected $fillable = ["make", "model", "colour"];

    public function films()
    {
        return $this->belongsToMany(Film::class);
    }

    public function setFilms(array $film_ids)
    {
        // update the pivot table with film IDs
        $this->films()->sync($film_ids);
        return $this;
    }
}