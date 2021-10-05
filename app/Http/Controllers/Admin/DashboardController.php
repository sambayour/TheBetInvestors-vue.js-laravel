<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
use App\Http\Request\ChangePasswordRequest;
use Validator;
use App\User;
use Session;

class DashboardController extends Controller
{

	public function index()
	{
		 $data = DB::table('users')->get();
		 return response([
            "success" => true,
            "data" => $data
        ],Response::HTTP_OK); 
	}
    public function dashboard() 
    {
    	// return 'welcome home '.Auth::user()->role;
    	return response()->json([
    		'user' => Auth::user(),
    		'last_ip' => session('last_ip'),
    		'last_login' => session('last_login')
    	], 200);
	}
	public function alluser(){
		$data = DB::table('users')->get();
        return response([
            "success" => true,
            "data" => $data
        ],Response::HTTP_OK); 
	}
	public function password(Request $request)
	{			
		if(Auth::Check())
		{	 
		  if(\Hash::check($request->cpassword,Auth::User()->password))
			 {		
			  $user = User::find(Auth::user()->id)->update(["password"=> bcrypt($request->npassword)]);    	
			  $response = array('message' => 'New Password updated', 'success' => true, 'code' => '204');
			return response($response, Response::HTTP_OK);
			}
		  else{
			return response()->json(['message' => 'Current password is not valid','success' => false], Response::HTTP_UNAUTHORIZED);	
			}
			die;
		}
		else {
			return response()->json(['success' => false, 'message' => 'Officer is not logged in'], Response::HTTP_UNAUTHORIZED);
	
		}

	}
}
