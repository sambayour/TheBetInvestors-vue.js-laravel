<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Trebles;
use App\Http\Requests\TreblesRequest;
use App\Http\Resources\TreblesResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
use Carbon\Carbon;

class TreblesController extends Controller
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
        if($this->all) return Trebles::all();
        $trebles = Trebles::orderBy('created_at','dsc')->paginate(5);
        return TreblesResource::collection($trebles);
        
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function store(TreblesRequest $request)
    {      
        Trebles::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Trebles tip successfully added"
        ],Response::HTTP_CREATED);
    }

     /**
     * Display the specified resource.
     *
     * @param  \App\Trebles  $trebles
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
     public function show($trebles)
     {
         return Trebles::findorfail($trebles);
         
     }

     public function today_trebles()
     {
          $data = DB::table('trebles')->select(DB::raw('*'))
         ->whereRaw('Date(created_at) = CURDATE()')->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

     public function others()
     {
        $data = DB::table("trebles")
                   ->select(DB::raw('*'))
                   ->whereDate('created_at', '>', Carbon::now()->subDays(30))
                   ->OrderBy('created_at', 'DESC')
                   ->get();
         return response([
             "data" => $data
         ],Response::HTTP_OK); 
     }

    public function showSpecificId($trebles)
    {
        $trebles = Trebles::orderBy('created_at','asc')->where('id',$trebles)->paginate(5);
        return TreblesResource::collection($trebles);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Trebles $trebles)
    {       
        $trebles = Trebles::find($request->input('id'));
        $trebles->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "Trebles tip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Trebles $trebles)
    {
        $trebles = Trebles::find($request->input('id'));
        $trebles->delete();
        return response([
            "success" => "Trebles tip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }   
}
