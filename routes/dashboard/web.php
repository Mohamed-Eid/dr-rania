<?php

use App\Award;
use App\Setting;

Route::group(
    [        
        'prefix' => '',
        // 'prefix' => LaravelLocalization::setLocale(),
        // 'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ],
    
    function(){
        Route::prefix('AdminPanel')->name('dashboard.')->group(function(){
           
            Auth::routes(['register' => false]);
            
            //Password reset link request routes...
            Route::get('password/email', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.email');
            Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail');


            Route::middleware(['auth'])->group(function(){
                Route::get('/','DashboardController@index')->name('index');

                //user routes
                Route::resource('users' , 'UserController');




                Route::get('test','UniversityCenterController@index')->name('center.index');
                Route::post('store_awards','UniversityCenterController@store_awards')->name('store_awards');
                Route::put('update_awards/{award}','UniversityCenterController@update_awards')->name('update_awards');
                Route::delete('delete_awards/{award}','UniversityCenterController@delete_awards')->name('delete_awards');

                Route::post('store_publications','UniversityCenterController@store_publications')->name('store_publications');
                Route::put('update_publications/{publication}','UniversityCenterController@update_publications')->name('update_publications');
                Route::delete('delete_publications/{publication}','UniversityCenterController@delete_publications')->name('delete_publications');

                Route::post('store_workshops','UniversityCenterController@store_workshops')->name('store_workshops');
                Route::put('update_workshops/{workshop}','UniversityCenterController@update_workshops')->name('update_workshops');
                Route::delete('delete_workshops/{workshop}','UniversityCenterController@delete_workshops')->name('delete_workshops');

                Route::post('store_videos','UniversityCenterController@store_videos')->name('store_videos');
                Route::put('update_videos/{video}','UniversityCenterController@update_videos')->name('update_videos');
                Route::delete('delete_videos/{video}','UniversityCenterController@delete_videos')->name('delete_videos');

                Route::post('store_photos','UniversityCenterController@store_photos')->name('store_photos');
                Route::put('update_photos/{photo}','UniversityCenterController@update_photos')->name('update_photos');
                Route::delete('delete_photos/{photo}','UniversityCenterController@delete_photos')->name('delete_photos');























                Route::resource('/awards','AwardController')->except(['show']);
                Route::resource('/congress','EventController')->except(['show']);
                Route::resource('/certifications','CertificationController')->except(['show']);
                Route::resource('/publications','PublicationController')->except(['show']);
                Route::resource('/theses','ThesisController')->except(['show']);
                Route::resource('/lectures','LectureController')->except(['show']);
                Route::resource('/workshops','WorkshopController')->except(['show']);
                Route::resource('/esteems','EsteemController')->except(['show']);


                Route::get('settings/all','SettingController@all')->name('settings.all_settings');

                Route::put('/setting/contact','SettingController@update_contact')->name('setting.update_contact');

                Route::put('/setting/about','SettingController@update_about')->name('setting.update_about');


                Route::resource('/settings','SettingController');



                Route::get('profile','ProfileController@edit')->name('profiles.edit');
                Route::put('profile','ProfileController@update')->name('profiles.update');
                
                Route::get('profile/change_password','ProfileController@change_password')->name('profiles.change_password');
                Route::put('profile/change_password','ProfileController@change_password_method')->name('profiles.change_password_method');
    
    
    
            });
        });//end of dashboard routes
});

