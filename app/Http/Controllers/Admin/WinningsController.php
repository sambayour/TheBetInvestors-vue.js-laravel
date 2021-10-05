<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Winnings;
use App\Http\Requests\WinningsRequest;
use App\Http\Resources\WinningsResource;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;

class WinningsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $winnings = Winnings::orderBy('created_at','asc')->paginate(5);
        return WinningsResource::collection($winnings);
    }

    public function userindex()
    {
        return WinningsResource::collection(Winnings::all()); 
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(WinningsRequest $request)
    {
        if ($request->hasfile('image')) {
            $path = $request->file('image')->store('winnings', 'public');
        }
        Winnings::create([
            'image' => $path,
            'caption' => $request->caption            
        ]);
        return response([
            "success" => "Winnings slip successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Winnings $winnings)
    {
        return new WinningsResource($winnings);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(WinningsRequest $request, Winnings $winnings)
    {
        if ($request->hasfile('image')) {
            Storage::disk('public')->delete($winnings->image);
            $path = $request->file('image')->store('winnings', 'public');
        }else{
            $path = $winnings->image;
        }
        $winnings = Winnings::find($request->input('id'));
        $winnings->update([
            'image' => $path,
            'caption' => $request->caption
        ]);
        return response([
            "success" => "Winnings slip successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Winnings $winnings)
    { 
        Storage::disk('public')->delete($winnings->image);
        $winnings = Winnings::find($request->input('id'));
        $winnings->delete();
        return response([
            "success" => "Winnings Slip successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
