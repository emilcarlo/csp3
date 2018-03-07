<?php



// User Routes
Route::group(['namespace'=>'User'],function(){
	Route::get('/', 'HomeController@index');
	Route::get('post/{post}', 'PostController@post')->name('post');

	Route::get('post/tag/{tag}','HomeController@tag')->name('tag');
	Route::get('post/category/{category}','HomeController@category')->name('category');



});    

// Admin Routes

Route::group(['namespace'=>'Admin'],function(){
	Route::get('admin/home', 'HomeController@index')->name('admin.home');
	Route::resource('admin/user','UserController');
	Route::resource('admin/post','PostController');
	Route::resource('admin/tag','TagController');
	Route::resource('admin/category','CategoryController');

	Route::get('admin-login','Auth\LoginController@showLoginForm')->name('admin.login');
	Route::post('admin-login','Auth\LoginController@login');
}); 

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
