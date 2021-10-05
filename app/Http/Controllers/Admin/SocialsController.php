<?php
 
namespace App\Http\Controllers\Admin;
 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Socials;
use App\Http\Requests\SocialsRequest;
use App\Http\Resources\SocialsResource;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;
 
class SocialsController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return SocialsResource::collection(Socials::all());
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SocialsRequest $request)
    {

        return response([
            "error" => "Links cannot be added directly"
        ],Response::HTTP_FORBIDDEN);
   
        Socials::create([          
            'body' => $request->body
        ]);
        
        return response([
            "success" => "Links successfully added"
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Socials $coa)
    {
         return new SocialsResource(Socials::findOrFail(1));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SocialsRequest $request, Socials $sm)
    {      
        // var_dump($coa);
        // die;
        // $sm->update([          
        //     'facebook' => $request->facebook,
        //     'twitter' => $request->twitter,
        //     'telegram' => $request->telegram
        // ]);
        DB::table('socials')
              ->update([
                'facebook' => $request->facebook,
                'twitter' => $request->twitter,
                'telegram' => $request->telegram              
              ]);

        return response([
            "success" => "Links successfully Updated"
        ],Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Socials $coa)
    {
        if($coa->id == 1 ){
            return response([
                "error" => "Links cannot be deleted"
            ],Response::HTTP_FORBIDDEN);
        }
        Storage::disk('public')->delete($coa->image);
        $coa->delete();
        return response([
            "success" => "Links successfully deleted"
        ],Response::HTTP_NO_CONTENT);
    }
}
