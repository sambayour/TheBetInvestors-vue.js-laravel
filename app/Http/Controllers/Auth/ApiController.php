<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Jobs\SendEmail;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Validator;
use Symfony\Component\HttpFoundation\Response;

class ApiController extends Controller
{
    /**
     * Handles Registration Request
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function register(Request $request)
    {
        $request['service_number'] = $request['reg_service_number'];
        unset($request['reg_service_number']);
    	$validate = Validator::make($request->all(),[
            'service_number' => ['required', 'string', 'max:255', 'unique:users'],
            'rank' => ['required', 'string', 'max:255'],
            'full_name' => ['required', 'string', 'max:255'],
            'phone' => ['required', 'max:14'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'unit' => ['required', 'string', 'max:255'],
            'ucommand' => ['max:255'],
            'clerk' => [ 'max:255'],
            'uploads' => [ 'max:255'],
            'logins' => [ 'max:255']
		]);
        if($validate->fails()){
			$response = array('response' => $validate->messages(), 'success' => false);
            return response($response, Response::HTTP_INTERNAL_SERVER_ERROR);
		}
 		$pw = Str::random(10);
        $user =  User::create([
            'role_id' => 2,
            'rank' => $request['rank'],
            'service_number' => $request['service_number'],
            'full_name' => $request['full_name'],
            'phone' => $request['phone'],
            'email' => $request['email'],
            'unit' => $request['unit'],
            'ucommand' => $request['ucommand'] == '' ? '' : $request['ucommand'] ,
            'clerk' => $request['clerk'] == '' ? '' : $request['clerk'] ,
            'uploads' => 0,
            'logins' => 0,
            'password' => bcrypt($pw)
        ]);
        $user['password'] = $pw;
        $email = $request['email'];
        SendEmail::dispatch($email,$user,'user')->delay(Carbon::now()->addSeconds(5));
        
        return response()->json(['success' => true, 'message' => 'Account successfully created'], Response::HTTP_OK);
    }
 
    /**
     * Handles Login Request
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
    	$validate = Validator::make($request->all(),[
			'username' => 'required|string',
            'password' => 'required|string',
            'remember_me' => 'boolean'
		]);
		if($validate->fails()){
			$response = array('response' => $validate->messages(), 'success' => false);
            return response($response, Response::HTTP_INTERNAL_SERVER_ERROR);
		}
        $credentials = request(['username', 'password']);
        $userEmail = User::where('username',$request['username'])->get();
        if(count($userEmail) < 1){
            return response()->json([
                'message' => 'Unauthorized',
                'code' => 610
            ], Response::HTTP_UNAUTHORIZED);
        }else if(!Auth::attempt($credentials)){
           
            return response()->json([
                'message' => 'Unauthorized',
                'code' => 611
            ], Response::HTTP_UNAUTHORIZED);
        }
        $user = $request->user();
    
        $user->update([
            'last_login' => Carbon::now(),
            'last_ip' => request()->ip()
        ]);
        $tokenResult = $user->createToken('OfficerSignPassword');
        $token = $tokenResult->token;
               
        if ($request->remember_me){
            $token->expires_at = Carbon::now()->addHours(1);
        }else{

            $token->expires_at = Carbon::now()->addMinutes(20);
        }

        $token->save();
        return response()->json([
        	'success' => true,
            'access_token' => $tokenResult->accessToken,
            'user' => $request->user()
        ],Response::HTTP_OK);
    }
        
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out'
        ],Response::HTTP_OK);
    }
    public function password(Request $request)
    {
     return 'get bck';
    }
}
