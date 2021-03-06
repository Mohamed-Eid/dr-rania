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




                Route::get('center_of_cairo_university','UniversityCenterController@index')->name('center.index');

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


                
                
                Route::get('center_of_excellence','ExcellenceCenterController@index')->name('excellence_center.index');

                Route::post('store_slider','ExcellenceCenterController@store_slider')->name('store_slider');
                Route::put('update_slider/{slider}','ExcellenceCenterController@update_slider')->name('update_slider');
                Route::delete('delete_slider/{slider}','ExcellenceCenterController@delete_slider')->name('delete_slider');

                Route::post('store_services','ExcellenceCenterController@store_services')->name('store_services');
                
                Route::put('update_services/{service}','ExcellenceCenterController@update_services')->name('update_services');
                
                Route::delete('delete_services/{service}','ExcellenceCenterController@delete_services')->name('delete_services');




                Route::get('case_author','ObjectController@case_author')->name('case_author');
                Route::get('home_publications','ObjectController@home_publications')->name('home_publications');
                Route::put('case_author','ObjectController@edit_case_author')->name('edit_case_author');


                Route::resource('/awards','AwardController')->except(['show']);
                Route::resource('/congress','EventController')->except(['show']);
                Route::resource('/certifications','CertificationController')->except(['show']);
                Route::resource('/publications','PublicationController')->except(['show']);
                Route::resource('/theses','ThesisController')->except(['show']);
                Route::resource('/lectures','LectureController')->except(['show']);
                Route::resource('/workshops','WorkshopController')->except(['show']);
                Route::resource('/esteems','EsteemController')->except(['show']);
                Route::resource('/subscribers','SubscriberController')->only(['index','destroy']);


                Route::get('settings/all','SettingController@all')->name('settings.all_settings');

                Route::put('/setting/edit','SettingController@update_edit')->name('setting.update_edit');


                Route::resource('/settings','SettingController');

                Route::get('/contact_messages','MessageController@index')->name('contact.index');

                Route::get('/center_contact_messages','MessageController@center_index')->name('contact.center_index');

                Route::delete('/contact_messages/{message}','MessageController@destroy')->name('contact.destroy');

                Route::get('profile','ProfileController@edit')->name('profiles.edit');
                Route::put('profile','ProfileController@update')->name('profiles.update');
                
                Route::get('profile/change_password','ProfileController@change_password')->name('profiles.change_password');
                Route::put('profile/change_password','ProfileController@change_password_method')->name('profiles.change_password_method');
    
    
    
            });
        });//end of dashboard routes
});

