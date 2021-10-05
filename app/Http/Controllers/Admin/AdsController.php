<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Ads;
use App\Http\Requests\AdsRequest;
use App\Http\Resources\AdsResource;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;


class AdsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = Ads::orderBy('created_at','asc')->paginate(5);
        return AdsResource::collection($ads);
    }

    public function userindex()
    {
        return AdsResource::collection(Ads::all()); 
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdsRequest $request)
    {
        if ($request->hasfile('image')) {
            $path = $request->file('image')->store('ads', 'public');
        }
        Ads::create([
            'image' => $path,
            'url' => $request->url            
        ]);
        return response([
            "success" => "Ads successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Ads $ads)
    {
        return new AdsResource($ads);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AdsRequest $request, Ads $ads)
    {
        if ($request->hasfile('image')) {
            Storage::disk('public')->delete($ads->image);
            $path = $request->file('image')->store('ads', 'public');
        }else{
            $path = $ads->image;
        }
        $ads = Ads::find($request->input('id'));
        $ads->update([
            'image' => $path,
            'url' => $request->url
        ]);
        return response([
            "success" => "Ads successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ads $ads)
    {        
        Storage::disk('public')->delete($ads->image);
        // $ads = Ads::find($request->input('id'));
        // $ads->delete();
        DB::table('ads')->where('id', $ads)->delete();
        return response([
            "success" => "Ads successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
