<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Film extends Model
{
    protected $fillable = ["name", "release_date", "director", "bond_id"];

    public function bond()
    {
        return $this->belongsTo(Bond::class);
    }
}
