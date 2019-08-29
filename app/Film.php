<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Car;

class Film extends Model
{
    protected $fillable = ["name", "release_date", "director", "bond_id"];

    public function bond()
    {
        return $this->belongsTo(Bond::class);
    }

    public function cars()
    {
        return $this->belongsToMany(Car::class);
    }

    public function setCars(array $car_ids)
    {
        // update the pivot table with car IDs
        $this->cars()->sync($car_ids);
        return $this;
    }
}
