<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ComplaintRequest;
use App\Http\Requests\ContactUsRequest;
use App\Http\Requests\PasswordResetRequest;
use App\Http\Requests\ChangePasswordRequest;
use App\Http\Requests\SalaryRequest;
use App\Http\Requests\SubscribeRequest;
use App\Http\Requests\DocDownloadRequest;
use App\Http\Requests\FinRequest;
use App\Http\Requests\InfoRequest; 
use App\Http\Requests\PayslipRequest;

use Illuminate\Support\Facades\Auth;

use Carbon\Carbon;
use App\Jobs\SendEmail;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Symfony\Component\HttpFoundation\Response;
use App\User;

class GeneralController extends Controller
{
    
    public function loadPages()
    {
        return view('app');
    }

    public function contact_us(ContactUsRequest $request)
    {
        $contact = $request->all();
        $serv = 'Contact Us';
        $email = 'hello@samuelolubayo.website';
        SendEmail::dispatch($email,$contact,'contact')->delay(Carbon::now()->addSeconds(5));
    	return response()->json(['success' => true, 'message' => 'Message sent successfully'], Response::HTTP_OK);
    }
    // get faq
    public function get_faq()
    {
        $data = DB::table('faqs')->get();
        return response([
            "success" => true,
            "data" => $data
        ],Response::HTTP_OK); 
    }
  
   
    
    public function passwordreset(PasswordResetRequest $request)
    {   

        $validated = $request->validated();
        $email = DB::table('users')->where('service_number', $validated)->value('email');
         
         $response = array('response' => $email, 'success' => false, 'code' => 745);
         if ($email == null )  return response($response, Response::HTTP_UNAUTHORIZED);
         DB::table('password_resets')->insert([
            'email' => $email,
            'token' => str_random(50), 
            'created_at' => Carbon::now()
        ]);
        
        $tokenData = DB::table('password_resets')->where('email', $email)->first();
        $reset = $tokenData->token;
       
        
        SendEmail::dispatch($email,$reset,'reset')->delay(Carbon::now()->addSeconds(5));
        
        $response = array('email' => $email, 'success' => true, 'code' => 744);
        return response($response, Response::HTTP_OK);
          
    }
   public function resetnow(ChangePasswordRequest $request)
   {
        
        $password = $request->password;
        $token = $request->token;
        $tokenData = DB::table('password_resets')->where('token', $token)->first();
        $response = array('message' => 'Sorry the token has expired', 'success' => false, 'code' => 745);
            
        if($tokenData == null) return response($response, Response::HTTP_UNAUTHORIZED);
        $user = User::where('email',$tokenData->email)->first();
        
        $response = array('message' => 'The user has been deleted','success' => $user, 'code' => 745);
        if($user == null)  return response($response, Response::HTTP_UNAUTHORIZED);
        
        $pwd = bcrypt ($password);
        DB::table('users')->where('email', $user->email)->update(['password' => $pwd]);
        DB::table('password_resets')->where('email', $user->email)->delete();

        $response = array('message' => 'Password has changed successfully, you can now log in','success' => true, 'code' => 745);
        return response($response, Response::HTTP_OK);
        
   }
   public function displaypasswordform($token)
   {

            $tokenData = DB::table('password_resets')->where('token', $token)->first();
            if (!$tokenData){
            $response = array('response' => 'Sorry the token has expired', 'success' => false, 'code' => 745);
            return redirect('/account/reset/')->with('response',$response);
            
            }
            else{
            $response = array('token' => $token, 'success' => true, 'code' => 744);
            return redirect('/account/reset/'.$token)->with('response',$response);
            
            
    }
   }
   public function subscribe(SubscribeRequest $request)
   {
      echo  $email = $request->email;
       $download = $request->all();
       $service = 'Subscription';
    //    SendEmail::dispatch($email,$download,'download')->delay(Carbon::now()->addSeconds(5));       
       DB::table('subscribers')->insert(['email' => $email]);
       return response()->json(['success' => true, 'You have added to our subscription list'], Response::HTTP_OK);
   }

   // end super admin dashboard details

   public function all_today_tip()
   {
    $silver = DB::table("rollovers")
    ->select("rollovers.country",
    "rollovers.teams"
      ,"rollovers.tip"
      ,"rollovers.status",
      "rollovers.created_at");
      $black = DB::table("daily2odds")
    ->select("daily2odds.country",
        "daily2odds.teams"
      ,"daily2odds.tip"
      ,"daily2odds.status"
      ,"daily2odds.created_at");
     $gold = DB::table("ggtips")
    ->select(
        "ggtips.country",
        "ggtips.teams"
      ,"ggtips.tip"
      ,"ggtips.status"
      ,"ggtips.created_at")
    ->unionAll($silver)
    ->unionAll($black)
    ->OrderBy('created_at', 'DESC')
    ->get();
      
    return response([
        "data" => $gold
    ],Response::HTTP_OK); 
   }
  
}
