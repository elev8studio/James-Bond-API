<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bond;
use App\Http\Resources\BondListResource;
use App\Http\Resources\BondResource;
use App\Http\Requests\BondRequest;
use App\Http\Requests\BondStoreRequest;


class Bonds extends Controller
{
    /**
     * Display a listing of the bond.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BondListResource::collection(Bond::all());
    }

    /**
     * Store a newly created bond in storage.
     *
     * @param  \App\Http\Requests\BondRequest  $request
     * @return \App\Http\Resources\BondResource
     */
    public function store(BondStoreRequest $request)
    {
        $data = $request->only(["name", "dob"]);
        $bond = Bond::create($data);
        return new BondResource($bond);
    }

    /**
     * Display the specified bond.
     *
     * @param  \App\Bond
     * @return \App\Http\Resources\BondResource
     */
    public function show(Bond $bond)
    {
        return new BondResource($bond);
    }

    /**
     * Update the specified bond in storage.
     *
     * @param  \App\Http\Requests\BondRequest  $request
     * @param  \App\Bond
     * @return \App\Http\Resources\BondResource
     */
    public function update(BondRequest $request, Bond $bond)
    {
        $data = $request->only(["name", "dob"]);
        $bond->fill($data)->save();
        return new BondResource($bond);
    }

    /**
     * Remove the specified bond from storage.
     *
     * @param  \App\Bond
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bond $bond)
    {
        $bond->delete();
        return response(null, 204);
    }
}
