<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Bond;
use App\Http\Resources\BondListResource;
use App\Http\Resources\BondResource;

class Bonds extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return BondListResource::collection(Bond::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->only(["name", "dob"]);
        $bond = Bond::create($data);
        return new BondResource($bond);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Bond $bond)
    {
        return new BondResource($bond);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Bond $bond)
    {
        $data = $request->only(["name", "dob"]);
        $bond->fill($data)->save();
        return new BondResource($bond);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bond $bond)
    {
        $bond->delete();
        return response(null, 204);
    }
}
