<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class FilmListResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // make sure cars are up to date
        $this->resource->load("cars");
        
        $cars = $this->cars->map(function ($car) {
            return $car['make'] . ' ' . $car['model'];
        });

        return [
            "id" => $this->id,
            "name" => $this->name,
            "release_date" => $this->release_date,
            "director" => $this->director,
            "bond" => $this->bond['name'],
            "cars" => $cars,
        ];
    }
}
