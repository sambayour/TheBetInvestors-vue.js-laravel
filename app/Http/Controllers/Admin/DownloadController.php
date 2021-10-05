<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Download;
use App\Http\Requests\DownloadRequest;
use App\Http\Resources\DownloadResource;
use Illuminate\Support\Facades\Storage;
use Symfony\Component\HttpFoundation\Response;

class DownloadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $download = Download::orderBy('created_at','asc')->paginate(5);
        return DownloadResource::collection($download);
    }


    public function sort($category)
    {
        $download = Download::where('category',$category)->orderBy('created_at','asc')->paginate(5);
        return DownloadResource::collection($download);
        
    }
   
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(DownloadRequest $request)
    {
        if ($request->hasfile('doc')) {
            $path = $request->file('doc')->store('download', 'public');
        }
        Download::create([
            'title' => $request->title,
            'summary' => $request->summary,
            'category' => $request->category,
            'doc' => $path,
            'download_count' => '0'
        ]);
        return response([
            "success" => "Document/software successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show(Download $download)
    {
        return new DownloadResource($download);
    }
    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(DownloadRequest $request, Download $download)
        {
            if ($request->hasfile('doc')) {
                Storage::disk('public')->delete($download->doc);
                $path = $request->file('doc')->store('download', 'public');
            }else{
                $path = $download->doc;
            }
            $download->update([
                'title' => $request->title,
                'summary' => $request->summary,
                'category' => $request->category,
                'doc' => $path
            ]);
            return response([
                "success" => "Document successfully updated"
            ],Response::HTTP_CREATED);
        
    
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $ids
     * @return \Illuminate\Http\Response
     */
    public function destroy(Download $download)
    {
        Storage::disk('public')->delete($download->doc);
        $download->delete();
        return response([
            "success" => "Upload successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
