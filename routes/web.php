<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\SubCategory;
use GuzzleHttp\Psr7\Response;

Route::get('/', function () {
    return redirect('/ar');
});
Route::get('/{lang}', 'homeController@index');

Route::get('/{lang}/about' ,'homeController@about');
Route::get('/{lang}/services' ,'homeController@AllService');
Route::get('/{lang}/b_tv' ,'homeController@tv');
Route::get('/{lang}/offerr' ,'homeController@offers');
Route::get('/{lang}/contact_us' ,'homeController@contact');
Route::get('/{lang}/SingleService/{id}' ,'homeController@SingleService');
Route::get('/{lang}/SingleOffer/{id}' ,'homeController@SingleOffer');


Route::get('/{lang}/AllProject' ,'homeController@AllProject');
Route::get('/{lang}/SingleProject/{id}' ,'homeController@SingleProject');
Route::get('/{lang}/photo' ,'homeController@gallery');
Route::get('/{lang}/SingleNews/{id}' ,'homeController@SingleNews');
Route::get('/{lang}/SingleMaterial/{id}' ,'homeController@SingleMaterial');



Route::post('/ContactPost','homeController@ContactPost');
Route::post('/subscribemember','homeController@subscribemember');






Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// Auth::routes();

// Route::get('/home', 'HomeController@index')->name('home');
