<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Car;
use App\Http\Resources\CarResource;
use App\Http\Resources\CarListResource;
use App\Http\Requests\CarRequest;

class Cars extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \App\Http\Resources\CarListResource
     */
    public function index()
    {
        return CarListResource::collection(Car::all());
    }

    /**
     * Store a newly created car in storage.
     *
     * @param  \App\Http\Requests\CarRequest  $request
     * @return \App\Http\Resources\CarResource
     */
    public function store(CarRequest $request)
    {
        $data = $request->only(["make", "model", "colour"]);
        $car = Car::create($data);
        return new CarResource($car);
    }

    /**
     * Display the specified car.
     *
     * @param  \App\Car;
     * @return \App\Http\Resources\CarResource;
     */
    public function show(Car $car)
    {
        return new CarResource($car);
    }

    /**
     * Update the specified car in storage.
     *
     * @param  \App\Http\Requests\CarRequest  $request
     * @param  \App\Car
     * @return \App\Http\Resources\CarResource
     */
    public function update(CarRequest $request, Car $car)
    {
        $data = $request->only(["make", "model", "colour"]);
        $car->fill($data)->save();
        return new CarResource($car);
    }

    /**
     * Remove the specified car from storage.
     *
     * @param  \App\Car
     * @return \Illuminate\Http\Response
     */
    public function destroy(Car $car)
    {
        $car->delete();
        return response(null, 204);
    }
}
