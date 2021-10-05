<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use DummyFullModelClass;
use App\Ggtips;
use Illuminate\Http\Request;
use App\Http\Requests\GgtipsRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\GgtipsResource;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;

class GgtipsController extends Controller
{
    public $all = false;
    public function __construct($a = false){
            $this->all = $a;
    }

    /**
     * Display a listing of the resource.
     *
     * @param  \App\Ggtips  $ggtips
     * @return \Illuminate\Http\Response
     */
    public function index()
    {       
        if($this->all) return Ggtips::all();    
        $ggtips = Ggtips::orderBy('created_at','dsc')->paginate(5);
        return GgtipsResource::collection($ggtips);
        
    }

    public function ggtips()
    {
         $data = DB::table('ggtips')->select(DB::raw('*'))
        ->whereRaw('Date(created_at) = CURDATE()')->get();
        return response([
            "data" => $data
        ],Response::HTTP_OK); 
    }


    public function others()
    {
       $data = DB::table("ggtips")
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
     * @param  \App\Ggtips  $ggtips
     * @return \Illuminate\Http\Response
     */
    public function store(GgtipsRequest $request)
    {     

        Ggtips::create([
            'country' => $request->country,
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status
        ]);
        return response([
            "success" => "BTTS tip successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Ggtips  $ggtips
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
    public function show($ggtips)
    {
        return Ggtips::findorfail($ggtips);
    }

    public function showapprovedById($ggtips){
        $ggtips = Ggtips::orderBy('created_at','asc')->where('id',$ggtips)->paginate(5);
        return GgtipsResource::collection($ggtips);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Ggtips  $ggtips
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
    public function update(GgtipsRequest $request, Ggtips $ggtips)
    {
      $ggtips = Ggtips::find($request->input('id'));
        $ggtips->update([
            'teams' => $request->teams,
            'tip' => $request->tip,
            'status' => $request->status,
        ]);
        return response([
            "success" => "BTTS tip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Ggtips  $ggtips
     * @param  \DummyFullModelClass  $DummyModelVariable
     * @return \Illuminate\Http\Response
     */
    public function destroy($ggtips)
    {        

        DB::table('ggtips')->where('id', $ggtips)->delete();

        return response([
            "success" => "Btts tip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
