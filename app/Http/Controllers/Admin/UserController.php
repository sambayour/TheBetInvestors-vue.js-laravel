<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Storage;
use App\Http\Resources\UserResource;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::orderBy('created_at','asc')->paginate(5);
        return UserResource::collection($user);
    }

   public function suser()
   {
 
    $suser = DB::table('users')->select('service_number')->where('admin_right', '0')->get();

    return response([
        "data" => $suser
    ],Response::HTTP_OK); 

   
   }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {

        if ($request->hasfile('image')) {
            Storage::disk('public')->delete($user->image);
            $path = $request->file('image')->store('user', 'public');
        }else{
            $path = $user->image;
        }
        
        if($user->id == 1 ){
            $user->update([
                
                'full_name' => $request->full_name,
                'rank' => $request->rank,
                'unit' => $request->unit,
                'salary_step' => $request->salary_step,
                'image' => $path
            ]);
            
        }else{
            $user->update([
                'full_name' => $request->full_name,
                'service_number' => $request->reg_service_number,
                'rank' => $request->rank,
                'unit' => $request->unit,
                'salary_step' => $request->salary_step,
                'image' => $path
            ]);
            
        }
       
        return response([
            "success" => "User successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if($user->id == 1 ){
            return response([
                "error" => "Superadmin cannot be deleted"
            ],Response::HTTP_FORBIDDEN);
        }
        Storage::disk('public')->delete($user->image);
        $user->delete();
        return response([
            "success" => "User successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }


    public function makeAdmin(Request $request)
    {
        $user = User::findorfail($request->input('id'));
        $user->update([
            "admin_right" =>true
        ]);
        return response([
            "success" => true,
            "message" => 'Admin right added'
        ],Response::HTTP_OK);
    }

    public function revokeAdmin(Request $request)
    {
        $user = User::findorfail($request->input('id'));
        $user->update([
            "admin_right" =>false
        ]);
        return response([
            "success" => true,
            "message" => 'Admin right revoked'
        ],Response::HTTP_OK);
    }
}
