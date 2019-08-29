<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Film;
use App\Car;
use App\Bond;
use App\Http\Resources\FilmListResource;
use App\Http\Resources\FilmResource;
use App\Http\Resources\FilmsWithCarResource;
use App\Http\Resources\FilmsWithBondResource;
use App\Http\Requests\FilmRequest;

class Films extends Controller
{
    /**
     * Display a listing of the film.
     *
     * @return \App\Http\Resources\FilmListResource
     */
    public function index()
    {
        //
        return FilmListResource::collection(Film::all());
    }

    /**
     * Display a listing of the films for a specific bond.
     * 
     * @param  \App\Bond
     * @return \App\Http\Resources\FilmResource
     */
    public function bondIndex(Bond $bond)
    {
        return FilmsWithBondResource::collection($bond->films);
    }

    /**
     * Display a listing of the films for a specific car.
     * 
     * @param  \App\Car
     * @return \Illuminate\Http\Response
     */
    public function carIndex(Car $car)
    {
        return FilmsWithCarResource::collection($car->films);
    }

    /**
     * Store a newly created film in storage.
     *
     * @param  \App\Http\Requests\FilmRequest  $request
     * @return \App\Http\Resources\FilmResource
     */
    public function store(FilmRequest $request)
    {
        //
        $data = $request->only(["name", "release_date", "director", "bond_id"]);
        $film = Film::create($data);

        $film->setCars($request->get("car_ids"));

        return new FilmResource($film);
    }

    /**
     * Display the specified film.
     *
     * @param  \App\Film
     * @return \App\Http\Resources\FilmResource
     */
    public function show(Film $film)
    {
        //
        return new FilmResource($film);
    }

    /**
     * Update the specified film in storage.
     *
     * @param  \App\Http\Requests\FilmRequest  $request
     * @param  \App\Film
     * @return \App\Http\Resources\FilmResource
     */
    public function update(FilmRequest $request, Film $film)
    {
        //
        $data = $request->only(["name", "release_date", "director", "bond_id"]);
        $film->fill($data)->save();
        return new FilmResource($film);
    }

    /**
     * Remove the specified film from storage.
     *
     * @param  \App\Film
     * @return \Illuminate\Http\Response
     */
    public function destroy(Film $film)
    {
        //
        $film->delete();
        return response(null, 204);
    }
}
