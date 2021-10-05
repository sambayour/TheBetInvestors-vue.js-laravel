<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Botds;
use App\Http\Requests\BotdsRequest;
use App\Http\Resources\BotdsResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class BotdsController extends Controller
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
        if($this->all) return Botds::all();
        $botds = Botds::orderBy('created_at','dsc')->paginate(5);
        return BotdsResource::collection($botds);
        
        
    }

    public function store(BotdsRequest $request)
    {      
        Botds::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Bet of the day tip successfully added"
        ],Response::HTTP_CREATED);
    }

     /**
     * Display the specified resource.
     *
     * @param  \App\Botds  $botds
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
     public function show($botds)
     {
         return Botds::findorfail($botds);
         
     }

     public function today_botds()
     {
          $data = DB::table('botds')->select(DB::raw('*'))
         ->whereRaw('Date(created_at) = CURDATE()')->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

     public function others()
     {
        $data = DB::table("botds")
                   ->select(DB::raw('*'))
                   ->whereDate('created_at', '>', Carbon::now()->subDays(30))
                   ->OrderBy('created_at', 'DESC')
                   ->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

    public function showSpecificId($botds)
    {
        $botds = Botds::orderBy('created_at','asc')->where('id',$botds)->paginate(5);
        return BotdsResource::collection($botds);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Botds $botds)
    {       
        $botds = Botds::find($request->input('id'));
        $botds->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Botd successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Botds $botds)
    {
        $botds = Botds::find($request->input('id'));
        $botds->delete();
        return response([
            "success" => "Botds successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }   
}
