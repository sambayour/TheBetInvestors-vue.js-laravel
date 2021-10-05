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
Route::post('login', 'Auth\ApiController@login');
Route::post('register', 'Auth\ApiController@register');
Route::get('sadmin','UserController@suser');
Route::get('faq','GeneralController@get_faq');

// Password reset 
Route::post('reset','GeneralController@passwordreset');
Route::get('password-reset/{token}','GeneralController@displaypasswordform');
Route::post('update-password','GeneralController@resetnow');

// officer others details
Route::get('all_today_tip','GeneralController@all_today_tip');
 
//contact us route
Route::post('contact_us','GeneralController@contact_us');
//subscribe route
Route::post('subscribe','GeneralController@subscribe');
 
//download mobile app
Route::post('app_download','GeneralController@app_download');   
 
Route::group(['namespace' => 'Admin'],function(){
    Route::get('today_ggtips','GgtipsController@ggtips');
    Route::get('all_ggtips','GgtipsController@others');
    Route::get('today_rollovers','RolloversController@today_rollovers');
    Route::get('all_rollovers','RolloversController@others');
    Route::get('today_2odds','Daily2oddsController@today_2odds');
    Route::get('all_2odds','Daily2oddsController@others');
    Route::get('today_razor5odds','Razor5oddsController@today_razor5odds');
    Route::get('all_razor5odds','Razor5oddsController@others');
    Route::get('today_trebles','TreblesController@today_trebles');
    Route::get('all_trebles','TreblesController@others');
    Route::get('today_botds','BotdsController@today_botds');
    Route::get('all_botds','BotdsController@others');
    Route::get('terms','TermsController@index');
    Route::get('terms/{id}','TermsController@show');
    Route::get('socials','SocialsController@index');
    Route::get('socials/{id}','SocialsController@show');
    Route::get('ggtips','GgtipsController@index');
    Route::get('ggtips/{id}','GgtipsController@showapprovedById');
    Route::get('news','NewsController@index');
    Route::get('news/{id}','NewsController@showSpecificId');
    Route::get('daily2odds','Daily2oddsController@index');
    Route::get('daily2odds/{id}','Daily2oddsController@showSpecificId');
    Route::get('razor5odds','Razor5oddsController@index');
    Route::get('razor5odds/{id}','Razor5oddsController@showSpecificId');
    Route::get('botds','BotdsController@index');
    Route::get('botds/{id}','BotdsController@showSpecificId');
    Route::get('trebles','TreblesController@index');
    Route::get('trebles/{id}','TreblesController@showSpecificId');
    Route::get('allbets','AllBetsController@index');
    Route::get('event','EventController@index');
    Route::get('event/{id}','EventController@show'); 
    Route::get('all-event','EventController@userindex'); 
    Route::get('ads','AdsController@index');  
    Route::get('bookings','BookingsController@index');  
    Route::get('winnings','WinningsController@index');  
    Route::get('winningslips','WinningsController@userindex');  
    Route::get('paidAds','AdsController@userindex');  
    Route::get('photo-gallery','AdsController@userindex');  
    Route::get('winnings/{id}','WinningsController@show');   
    Route::get('ads/{id}','AdsController@show');   
    Route::get('bookings/{id}','BookingsController@show');   
});
 
//Secured routes
Route::group(['middleware' => 'auth:api'], function(){
    Route::get('logout', 'Auth\ApiController@logout');
 
    /** Super admin route **/
    Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'admin'],function(){
        Route::get('user', 'DashboardController@dashboard');
        Route::get('allus', 'DashboardController@alluser');
 
        Route::apiresource('ads','AdsController')->except(['index','show']);
        Route::apiresource('bookings','BookingsController')->except(['index','show']);
        Route::apiresource('winnings','WinningsController')->except(['index','show']);
        
        /** pages controller  **/
        Route::get('sadmin','UserController@suser');
        //terms controller
        Route::apiresource('terms','TermsController')->except(['index','show']);
        //Socials controller
        Route::apiresource('socials','SocialsController')->except(['index','show']);
        // leaders controller        
        Route::apiresource('ggtips','GgtipsController')->except(['index','show']);

        // events controller
        
        // digest controller

        // paypoint controller
        
        //video controller

        //push notification controller
        
        
        //end video controller
        
        /**  pages ends **/
        /** user controller **/
        Route::apiresource('user','UserController')->except(['show']);
        Route::post('make-admin','UserController@makeAdmin');
        Route::post('revoke-admin','UserController@revokeAdmin');
        
        /** user ends **/
        /** News Routes **/
        
        Route::apiresource('rollovers','RolloversController');
        // community news controller
        Route::apiresource('community','CommunityNewsController');
        Route::post('community-approve','CommunityNewsController@approveNews');
        Route::post('community-revoke','CommunityNewsController@revokeNews');
        //Main News
        Route::apiresource('news','NewsController')->except(['index']);
        //Rollovers
        Route::apiresource('daily2odds','Daily2oddsController')->except(['index']);
        Route::apiresource('razor5odds','Razor5oddsController')->except(['index']);
        Route::apiresource('botds','BotdsController')->except(['index']);
        Route::apiresource('trebles','TreblesController')->except(['index']);     
        //All bets
        Route::apiresource('allbets','AllBetsController')->except(['index']);
        /** News ends **/
        Route::post('change-password','DashboardController@password');
        
    });
 
    /** Officers Route **/
    Route::group(['prefix' => 'officer','namespace' => 'Officer', 'middleware' => 'officer'],function(){
        Route::get('user', 'DashboardController@dashboard');
        Route::apiresource('community','CommunityNewsController');
        Route::post('community-approve','CommunityNewsController@approveNews');
        Route::post('edit-profile','DashboardController@profile');
        Route::post('update-password','ApiController@password');
        
    });
 
});