<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Rollovers;
use App\Http\Requests\RolloversRequest;
use App\Http\Resources\RolloversResource;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
use Carbon\Carbon;


class RolloversController extends Controller
{

    public $all = false;
    public function __construct($a = false){
            $this->all = $a;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if($this->all) return Rollovers::all();  
        $rollovers = Rollovers::orderBy('created_at','dsc')->paginate(5);
        return RolloversResource::collection($rollovers);
       
    }



    public function today_rollovers()
    {
         $data = DB::table('rollovers')->select(DB::raw('*'))
        ->whereRaw('Date(created_at) = CURDATE()')->get();
        return response([
            "data" => $data
        ],Response::HTTP_OK); 
    }

    public function others()
    {
       $data = DB::table("rollovers")
                  ->select(DB::raw('*'))
                  ->whereDate('created_at', '>', Carbon::now()->subDays(30))
                  ->OrderBy('created_at', 'DESC')
                  ->get();
        return response([
            "data" => $data
        ],Response::HTTP_OK); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RolloversRequest $request)
    {           
        Rollovers::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
            // 'status' => true,
        ]);
    //    DB::table('users')->where('id', $request->user()->id)->update(['uploads' => DB::raw('uploads + 1'),]);

        return response([
            "success" => "Rollovers tip successfully added"
        ],Response::HTTP_CREATED);
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($rollovers)
    {
        return Rollovers::findorfail($rollovers);
    }


    public function showapprovedById($rollovers){
        $rollovers = Rollovers::orderBy('created_at','asc')->where('id',$rollovers)->where('status',1)->paginate(5);
        return RolloversResource::collection($rollovers);
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Rollovers $rollovers)
    {
        $request = (object) $request;                   
        $rollovers = Rollovers::find($request->input('id'));
        $rollovers->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status, 
        ]);
        return response([
            "success" => "Rollovers tip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Rollovers $rollovers)
    {
  
        $rollovers = Rollovers::find($request->input('id'));
        $rollovers->delete();        
        return response([
            "success" => "Rollovers tip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
    public function pending()
    {
        $news = Rollovers::latest()->where('status', 0)->get();
        return response([
            "success" => true,
            "data" => $news
        ],Response::HTTP_OK);       
    }

    public function approveNews(Request $request)
    {
        $user = Rollovers::findorfail($request->input('id'));
        $user->update([
            "status" =>true,
            "approval_id" => $request->user()->id
        ]);
        return response([
            "success" => true,
            "message" => 'Rollovers tip approved'
        ],Response::HTTP_OK);
    }

    public function revokeNews(Request $request)
    {
        $user = Rollovers::findorfail($request->input('id'));
        $user->update([
            "status" =>false,
            "approval_id" => 0
        ]);
        return response([
            "success" => true,
            "message" => 'Rollovers news revoked'
        ],Response::HTTP_OK);
    }
    
}
