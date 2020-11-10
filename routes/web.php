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


Route::get('change_language/{locale}',function($locale){
    
    app()->setLocale($locale);
    session()->put('locale',$locale);
    //dd(session()->get('locale'));
    //dd(app()->getLocale());
    return redirect()->back();

})->name('change_language');


Route::group(
    [
    //     'prefix' => LaravelLocalization::setLocale(),
    //  'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    'middleware' => [ 'change_lang' ]    
    ],
    
    function(){
        Route::name('frontend.')->group(function(){
        Route::get('/','HomeController@index')->name('index');
 
        Route::get('/search','HomeController@search')->name('search');


       
        });//end of frontend routes
});
  