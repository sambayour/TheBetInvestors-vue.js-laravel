<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\RenditionDocument;
use App\Http\Requests\RenditionDocumentRequest;
use App\Http\Resources\RenditionDocumentResource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class RenditionDocumentController extends Controller
{
    //
    public function index()
    {
        $rendition = RenditionDocument::orderBy('created_at','asc')->paginate(5);
        return RenditionDocumentResource::collection($rendition);
        
    }
    
    public function sort($category,$type)
    {
        $rendition = RenditionDocument::where('category',$category)->where('type',$type)->orderBy('created_at','asc')->paginate(5);
        return RenditionDocumentResource::collection($rendition);
        
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasfile('doc')) {
            $path = $request->file('doc')->store('rendition', 'public');
        }
        RenditionDocument::create([
            'title' => $request->title,
            'summary' => $request->summary,
            'category' => $request->category,
            'type' => $request->type,
            'doc' => $path
        ]);
        return response([
            "success" => "Rendition Document successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(RenditionDocument $rendition)
    {
        return new RenditionDocumentResource($rendition);
    }
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(RenditionDocumentRequest $request, RenditionDocument $rendition)
    {
        if ($request->hasfile('doc')) {
            Storage::disk('public')->delete($rendition->doc);
            $path = $request->file('doc')->store('rendition', 'public');
        }else{
            $path = $rendition->doc;
        }
        $rendition->update([
            'title' => $request->title,
            'summary' => $request->summary,
            'category' => $request->category,
            'type' => $request->type,
            'doc' => $path
        ]);
        return response([
            "success" => "Rendition document successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(RenditionDocument $rendition)
    {
        Storage::disk('public')->delete($rendition->doc);
        $rendition->delete();
        return response([
            "success" => "Rendition document successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
