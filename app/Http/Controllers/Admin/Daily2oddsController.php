<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Daily2odds;
use App\Http\Requests\Daily2oddsRequest;
use App\Http\Resources\Daily2oddsResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class Daily2oddsController extends Controller
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
        if($this->all) return Daily2odds::all();
        $daily2odds = Daily2odds::orderBy('created_at','dsc')->paginate(5);
        return Daily2oddsResource::collection($daily2odds);
        
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Daily2oddsRequest $request)
    {      
        Daily2odds::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "2 odds tip successfully added"
        ],Response::HTTP_CREATED);
    }

     /**
     * Display the specified resource.
     *
     * @param  \App\Daily2odds  $daily2odds
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
     public function show($daily2odds)
     {
         return Daily2odds::findorfail($daily2odds);
         
     }

     public function today_2odds()
     {
          $data = DB::table('daily2odds')->select(DB::raw('*'))
         ->whereRaw('Date(created_at) = CURDATE()')->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

     public function others()
     {
        $data = DB::table("daily2odds")
                   ->select(DB::raw('*'))
                   ->whereDate('created_at', '>', Carbon::now()->subDays(30))
                   ->OrderBy('created_at', 'DESC')
                   ->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

     
    public function showSpecificId($daily2odds)
    {
        $daily2odds = Daily2odds::orderBy('created_at','asc')->where('id',$daily2odds)->paginate(5);
        return Daily2oddsResource::collection($daily2odds);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Daily2odds $daily2odds)
    {       
        $daily2odds = Daily2odds::find($request->input('id'));
        $daily2odds->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "2 odds tip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Daily2odds $daily2odds)
    {
        $daily2odds = Daily2odds::find($request->input('id'));
        $daily2odds->delete();
        return response([
            "success" => "2 odds tip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }   
}
