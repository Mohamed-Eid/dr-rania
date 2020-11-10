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


            Route::get('area_by_city_id/{city}','DelarController@areas_by_city_id')->name('get_area_by_city');

            Route::middleware(['auth'])->group(function(){
                Route::get('/','DashboardController@index')->name('index');

                //user routes
                Route::resource('users' , 'UserController');
                Route::resource('/categories','CategoryController');
                Route::resource('/sub_categories','SubcategoryController');
                
                Route::resource('/overview_sub_categories','OverviewSubcategoryController');


                Route::get('delete_product_image/{image}','ProductController@remove_image')->name('products.delete_image');
                Route::resource('/products','ProductController');

                Route::resource('/sectors','SectorController');

                Route::resource('/applicants','ApplicantController')->only(['index','destroy']);

 
                Route::resource('/cities','CityController');
                Route::resource('cities.areas','City\AreaController');

                Route::resource('/delars','DelarController');

                Route::resource('/partners','PartnerController');

                Route::resource('/testmonials','TestmonialController');
                Route::resource('/cultures','CultureController');

                Route::resource('/departments','DepartmentController');
                Route::resource('/jobs','JobController');


                Route::resource('/blog','PostController');
                Route::resource('/pages','PageController');

                Route::post('/pages/{page}/upload_images','PageController@upload_images')->name('pages.upload_images');

                Route::delete('/pages/{page}/delete_image/{id}','PageController@delete_image')->name('pages.delete_image');


                Route::get('settings/all','SettingController@all')->name('settings.all_settings');

                Route::put('/setting/contact','SettingController@update_contact')->name('setting.update_contact');

                Route::put('/setting/about','SettingController@update_about')->name('setting.update_about');


                Route::resource('/settings','SettingController');

                

                Route::get('/contact_messages','ContactMessageController@index')->name('contact.index');
                Route::delete('/contact_messages/{message}','ContactMessageController@destroy')->name('contact.destroy');


                Route::get('profile','ProfileController@edit')->name('profiles.edit');
                Route::put('profile','ProfileController@update')->name('profiles.update');
                
                Route::get('profile/change_password','ProfileController@change_password')->name('profiles.change_password');
                Route::put('profile/change_password','ProfileController@change_password_method')->name('profiles.change_password_method');
    
    
    
            });
        });//end of dashboard routes
});

