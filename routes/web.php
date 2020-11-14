<?php
use GuzzleHttp\Client;
use Illuminate\Support\Facades\DB;

// /*
// |--------------------------------------------------------------------------
// | Web Routes
// |--------------------------------------------------------------------------
// |
// | Here is where you can register web routes for your application. These
// | routes are loaded by the RouteServiceProvider within a group which
// | contains the "web" middleware group. Now create something great!
// |
// */



Route::name('frontend.')->group(function(){
    Route::get('/','HomeController@index')->name('index');

    Route::get('/supervise-thesis','ThesisController@index')->name('thesis.index');
    Route::get('/congress','CongressController@index')->name('congress.index');

    Route::get('/certifications','CertificationController@index')->name('certifications.index');


    Route::get('/esteems','EsteemController@index')->name('esteems.index');


    Route::get('/lectures','TeachingController@lectures')->name('teaching.lectures.index');
    Route::get('/workshops','TeachingController@workshops')->name('teaching.workshops.index');

    Route::get('/publications/books','PublicationController@books')->name('publications.books.index');
    Route::get('/publications/articles','PublicationController@articles')->name('publications.articles.index');
    Route::get('/publications/researches','PublicationController@researches')->name('publications.researches.index');


});//end of frontend routes
