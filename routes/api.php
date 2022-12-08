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
//secure users list
Route::post('users-list', 'App\Http\Controllers\Api\ApiController@getusersLists');
Route::post('add-user', 'App\Http\Controllers\Api\ApiController@addUser');
// API User Register with Authentication API TOKEN
Route::post('register-user', 'App\Http\Controllers\Api\ApiController@registerUser');
// API User Register with Authentication Passport Access TOKEN
Route::post('register-user-with-passport', 'App\Http\Controllers\Api\ApiController@registerUserWithPassport');

Route::post('add-multiple-data', 'App\Http\Controllers\Api\ApiController@addmultipledata');

// update single or multiple data
Route::put('update-user/{id}', 'App\Http\Controllers\Api\ApiController@updateUser');

// update single data
Route::patch('update-username/{id}', 'App\Http\Controllers\Api\ApiController@updateUsername');

Route::delete('delete-user/{id}', 'App\Http\Controllers\Api\ApiController@deleteUser');

Route::delete('delete-multiple-users/{ids}', 'App\Http\Controllers\Api\ApiController@MultipledeleteUser');
// Login Api User login adn update / return API TOKEN
Route::post('user-login', 'App\Http\Controllers\Api\ApiController@userLogin');
//Logout User Api
Route::post('user-logout', 'App\Http\Controllers\Api\ApiController@userLogout');
