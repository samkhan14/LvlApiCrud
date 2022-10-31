<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('users/{id?}', 'App\Http\Controllers\Api\ApiController@getusers');
Route::post('add-user', 'App\Http\Controllers\Api\ApiController@addUser');

Route::post('add-multiple-data', 'App\Http\Controllers\Api\ApiController@addmultipledata');

// update single or multiple data
Route::put('update-user/{id}', 'App\Http\Controllers\Api\ApiController@updateUser');

// update single data
Route::patch('update-username/{id}', 'App\Http\Controllers\Api\ApiController@updateUsername');
