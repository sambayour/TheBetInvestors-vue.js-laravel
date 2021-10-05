<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Razor5odds;
use App\Http\Requests\Razor5oddsRequest;
use App\Http\Resources\Razor5oddsResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
use Carbon\Carbon;


class Razor5oddsController extends Controller
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
        if($this->all) return Razor5odds::all();
        $razor5odds = Razor5odds::orderBy('created_at','dsc')->paginate(5);
        return Razor5oddsResource::collection($razor5odds);
        
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(Razor5oddsRequest $request)
    {      
        Razor5odds::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Razor 5 odds tip successfully added"
        ],Response::HTTP_CREATED);
    }

     /**
     * Display the specified resource.
     *
     * @param  \App\Razor5odds  $razor5odds
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
     public function show($razor5odds)
     {
         return Razor5odds::findorfail($razor5odds);
         
     }

     public function today_Razor5odds()
     {
          $data = DB::table('razor5odds')->select(DB::raw('*'))
         ->whereRaw('Date(created_at) = CURDATE()')->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

     public function others()
     {
        $data = DB::table("razor5odds")
                   ->select(DB::raw('*'))
                   ->whereDate('created_at', '>', Carbon::now()->subDays(30))
                   ->OrderBy('created_at', 'DESC')
                   ->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

    public function showSpecificId($razor5odds)
    {
        $razor5odds = Razor5odds::orderBy('created_at','asc')->where('id',$razor5odds)->paginate(5);
        return Razor5oddsResource::collection($razor5odds);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Razor5odds $razor5odds)
    {       
        $razor5odds = Razor5odds::find($request->input('id'));
        $razor5odds->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Razor 5 odds tip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Razor5odds $razor5odds)
    {
        $razor5odds = Razor5odds::find($request->input('id'));
        $razor5odds->delete();
        return response([
            "success" => "Razor 5 odds tip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }   
}
