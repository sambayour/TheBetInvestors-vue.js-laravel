<?php

namespace App\Http\Controllers\Officer;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use App\Http\Request\ChangePasswordRequest;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;
use Session;
use Validator;
use App\User;


class DashboardController extends Controller
{
    public function dashboard()
    {
    	// var_dump(Session::get('last_login'));
    	// die;
    	// return 'welcome home '.Auth::user()->role;
    	// return response()->json(['user' => Auth::user()], 200);
    	return response()->json([
    		'user' => Auth::user(),
    		'last_ip' => session('last_ip'),
    		'last_login' => session('last_login')
    	], 200);
	}
	public function profile(Request $request)
	{
		if ($request->hasfile('image')) {
            $path = $request->file('image')->store('user', 'public');
        }
		$id = Auth::User()->id;	
	 $rank = $request['rank'];		
	 $unit = $request['unit'];		
	 $command = $request['ucommand'] ? : '';		
	 $clerk = $request['clerk'] ? : '';		
	 $phone = $request['phone'];		
	 $image = 'storage/'.$path ;	
	 //die;	
	DB::table('users')->where('id', $id)
	->update(['rank' => $rank,'unit' => $unit,'ucommand' => $command,'clerk' => $clerk,'phone' => $phone, 'image' => $image]);
	return response(["success" => true], Response::HTTP_OK); 
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
