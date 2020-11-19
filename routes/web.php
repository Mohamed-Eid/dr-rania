<?php

Route::name('frontend.')->group(function(){
    Route::get('/','HomeController@index')->name('index');

    Route::get('/supervise-thesis','ThesisController@index')->name('thesis.index');
    Route::get('/congress','CongressController@index')->name('congress.index');
    Route::get('/certifications','CertificationController@index')->name('certifications.index');


    Route::get('/esteems','EsteemController@index')->name('esteems.index');
    
    Route::get('/pages/pelvic_floor_center_in_cairo_university','PageController@center_of_cairo')->name('pages.center_of_cairo');
    Route::get('/pages/pelvic_floor_center_of_excellence','PageController@center_of_excellence')->name('pages.center_of_excellence');
    
    Route::get('/basic_info','PageController@basic_info')->name('pages.basic_info');


    Route::get('/contact_us','PageController@contact_us')->name('pages.contact_us');
    Route::post('/contact_us_store','PageController@contact_us_store')->name('pages.contact_us.store');
    
    Route::post('/subscribe','PageController@subscribe')->name('pages.subscribe');


    Route::get('/lectures','TeachingController@lectures')->name('teaching.lectures.index');
    Route::get('/workshops','TeachingController@workshops')->name('teaching.workshops.index');

    Route::get('/publications/books','PublicationController@books')->name('publications.books.index');
    Route::get('/publications/articles','PublicationController@articles')->name('publications.articles.index');
    Route::get('/publications/researches','PublicationController@researches')->name('publications.researches.index');


});//end of frontend routes
