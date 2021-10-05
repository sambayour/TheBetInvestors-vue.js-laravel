<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Terms;
use App\Http\Requests\TermsRequest;
use App\Http\Resources\TermsResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class TermsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TermsResource::collection(Terms::all());
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(TermsRequest $request)
    {

        return response([
            "error" => "Terms cannot be added directly"
        ],Response::HTTP_FORBIDDEN);
   
        Terms::create([          
            'body' => $request->body
        ]);
        
        return response([
            "success" => "Terms successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Terms $coa)
    {
         return new TermsResource(Terms::findOrFail(1));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(TermsRequest $request, Terms $coa)
    {      
        // var_dump($coa);
        // die;
        // $coa->update([          
        //     'body' => $request->body
        // ]);
        DB::table('terms')
              ->update(['body' => $request->body]);

        return response([
            "success" => "Terms & Conditions successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Terms $coa)
    {
        if($coa->id == 1 ){
            return response([
                "error" => "Terms cannot be deleted"
            ],Response::HTTP_FORBIDDEN);
        }
        Storage::disk('public')->delete($coa->image);
        $coa->delete();
        return response([
            "success" => "Terms successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
