<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

$router->group(["prefix" => "bonds"], function ($router) {
    $router->post("/", "Bonds@store");
    $router->get("/", "Bonds@index");
    $router->get("{bond}", "Bonds@show");
    $router->put("{bond}", "Bonds@update");
    $router->delete("{bond}", "Bonds@destroy");
    $router->get("{bond}/films", "Films@bondIndex");
});

$router->group(["prefix" => "cars"], function ($router) {
    $router->post("/", "Cars@store");
    $router->get("/", "Cars@index");
    $router->get("{car}", "Cars@show");
    $router->put("{car}", "Cars@update");
    $router->delete("{car}", "Cars@destroy");
    $router->get("{car}/films", "Films@carIndex");
});

$router->group(["prefix" => "films"], function ($router) {
    $router->post("/", "Films@store");
    $router->get("/", "Films@index");
    $router->get("{film}", "Films@show");
    $router->put("{film}", "Films@update");
    $router->delete("{film}", "Films@destroy");
    $router->get("{film}/cars", "Cars@filmIndex");
});