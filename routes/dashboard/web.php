<?php

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


                Route::resource('/awards','AwardController')->except(['show']);
                Route::resource('/congress','EventController')->except(['show']);
                Route::resource('/certifications','CertificationController')->except(['show']);
                Route::resource('/publications','PublicationController')->except(['show']);
                Route::resource('/theses','ThesisController')->except(['show']);
                Route::resource('/lectures','LectureController')->except(['show']);
                Route::resource('/workshops','WorkshopController')->except(['show']);


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

