<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Bookings;
use App\Http\Requests\BookingsRequest;
use App\Http\Resources\BookingsResource;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\DB;


class BookingsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = Bookings::orderBy('created_at','asc')->paginate(5);
        return BookingsResource::collection($ads);
    }

    public function userindex()
    {
        return BookingsResource::collection(Bookings::all()); 
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(BookingsRequest $request)
    {
        if ($request->hasfile('image')) {
            $path = $request->file('image')->store('ads', 'public');
        }
        Bookings::create([
            'image' => $path,
            'url' => $request->url            
        ]);
        return response([
            "success" => "Bookings successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Bookings $ads)
    {
        return new BookingsResource($ads);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(BookingsRequest $request, Bookings $ads)
    {
        if ($request->hasfile('image')) {
            Storage::disk('public')->delete($ads->image);
            $path = $request->file('image')->store('ads', 'public');
        }else{
            $path = $ads->image;
        }
        $ads = Bookings::find($request->input('id'));
        $ads->update([
            'image' => $path,
            'url' => $request->url
        ]);
        return response([
            "success" => "Bookings successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Bookings $ads)
    {        
        Storage::disk('public')->delete($ads->image);
        // $ads = Bookings::find($request->input('id'));
        // $ads->delete();
        DB::table('ads')->where('id', $ads)->delete();
        return response([
            "success" => "Bookings successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
