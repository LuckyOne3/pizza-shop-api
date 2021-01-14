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

// Public routes




Route::group(['middleware' => ['auth:api']], function(){
    Route::post('logout', 'Auth\LoginController@logout');
  	
});

// Routes for guests only
Route::group(['middleware' => ['guest:api']], function(){
  
    	Route::get('/', function(){
  return response()->json(['message' => 'Hello'],200);
});
    Route::post('register', 'Auth\RegisterController@register');
    Route::post('login', 'Auth\LoginController@login');



   Route::post('order-make', 'User\MakeOrderController@create');
Route::get('products', 'User\GetProducts@index');
Route::get('orders/{email}', 'User\GetOrders@index');

});

