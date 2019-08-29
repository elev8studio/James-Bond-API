<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class CarResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // make sure films are up to date
        $this->resource->load("films");

        return [
            "id" => $this->id,
            "make" => $this->make,
            "model" => $this->model,
            "colour" => $this->colour, 
            "films" => $this->films->pluck('name'),
        ];
    }
}
