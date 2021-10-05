<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Admin\GgtipsController;
use App\Http\Requests\GgtipsRequest;
use App\Ggtips;
use App\Http\Controllers\Admin\RolloversController;
use App\Http\Requests\RolloversRequest;
use App\Rollovers;
use App\Http\Controllers\Admin\Daily2oddsController;
use App\Http\Requests\Daily2oddsRequest;
use App\Daily2odds;
use Illuminate\Support\Collection;
use App\Http\Resources\AllBetsResource;
use Illuminate\Support\Facades\DB;


use Illuminate\Pagination\LengthAwarePaginator;
class AllBetsController extends Controller
{
    public $allbets = [];
    public $ggtips = [];
    public $rollovers = [];
    public $daily2odds = [];
    public $finalRes = null;
    public $currentPage = 1;
    public $previousPage = null;
    public $nextPage = null;
    public $perPage = 5;
    public $lastPage = 1;
    public $total = 0;

    public $currentPageSearchResults = [];

    public function __construct(){

       $this->ggtips = new GgtipsController(true); 
       
       $this->rollovers = new RolloversController(true);
      
       $this->daily2odds = new Daily2oddsController(true); 
       
       
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->ggtips = $this->ggtips ->index();
        $this->rollovers = $this->rollovers ->index();
        $this->daily2odds = $this->daily2odds->index();

       if(count($this->ggtips) > 0){
        foreach($this->ggtips as $town){
            $town->category = 'GG';
            // $town->image = "/storage/$town->image";
            // $town->full_name = Ggtips::find($town->id)->user->full_name;
            // $town->approved_by = Ggtips::find($town->id)->user->full_name;
        }
           array_push($this->allbets,...$this->ggtips);
       }
       if(count($this->rollovers) > 0){
          foreach($this->rollovers as $town){
              $town->category = 'ROLLOVERS';
            //   $town->image = "/storage/$town->image";
            //   $town->full_name = Rollovers::find($town->id)->user->full_name;
            //   $town->approved_by = Rollovers::find($town->id)->approvedBy ? Rollovers::find($town->id)->approvedBy->full_name : null;
          }
         
        array_push($this->allbets,...$this->rollovers);
       }
       if(count($this->daily2odds) > 0){
        foreach($this->daily2odds as $town){
            $town->category = 'DAILY 2 ODD';
            // $town->image = "/storage/$town->image";
            // $town->full_name = Daily2odds::find($town->id)->user->full_name;
            // $town->approved_by = Daily2odds::find($town->id)->user->full_name;
        }
        array_push($this->allbets,...$this->daily2odds);
     }

     //Create a new Laravel collection from the array data
    $collection = new Collection($this->allbets);

    //Set current page form url e.g. &page=6
    $this->currentPage = LengthAwarePaginator::resolveCurrentPage();
    //Set total page count
    $this->total = count($this->allbets);

    //
    $this->lastPage = ceil($this->total/$this->perPage) < 1 ? 1 : ceil($this->total/$this->perPage);

    //Set meta links
    $this->previousPage  = $this->currentPage - 1 == 0 ;
    $this->nextPage  = $this->currentPage + 1 > $this->lastPage;
    //Slice the collection to get the items to display in current page
    $this->currentPageSearchResults = $collection->slice(($this->currentPage-1) * $this->perPage, $this->perPage)->all();

    $previousPageP = $this->currentPage - 1;
    $nextPageP = $this->currentPage + 1;
       return array(
           "data" => $this->currentPageSearchResults,
           "links" =>
            array(
            "first" => "http://localhost:8000/api/allbets?page=1",
            "last"  => "http://localhost:8000/api/allbets?page=$this->lastPage",
            "prev"  =>  $this->currentPage - 1 == 0 ? null : "http://localhost:8000/api/allbets?page=$previousPageP",
            "next"  => $this->nextPage - 1 == 0 ? null : "http://localhost:8000/api/allbets?page=$nextPageP",
            
           ),
            "meta" => 
            array(
            "current_page" =>  $this->currentPage,
            "from"  => count($this->allbets) > 0 ? 1 : null,
            "last_page"  => $this->lastPage,
            "path"  => "http://localhost:8000/api/allbets",
            "per_page"  => 5,
            "to" => null,
            "total"  => $this->total
            )
            
           
        );


    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
       if($request->update == 'true'){
             switch($request->initCategory) {
                case "GG":
                    //Delete from old category
                    $path = $this->ggtips->show($request->id)->image;
                    $request2 = array_add($request->all(),'path',$path);
                    $response1 = $this->ggtips->destroy($this->ggtips->show($request->id),true);
                    
                    //Add to new category
                    if($response1){
                        switch($request->category) {
                            case "ROLLOVER":
                                $response2 = $this->rollovers->store(new RolloversRequest($request2),$request->user_id);
                                break;
                            case "DAILY 2 ODD":
                                $response2 = $this->daily2odds->store(new Daily2oddsRequest($request2),$request->user_id);
                                break;
                        }
                    if($response2) $this->finalRes = 1;
                }
                break;
                case "ROLLOVER":
                    //Delete from old category
                    $path = $this->rollovers->show($request->id)->image;
                    $request2 = array_add($request->all(),'path',$path);
                    $response1 = $this->rollovers->destroy($this->rollovers->show($request->id),true);
                    
                    //Add to new category
                    if($response1){
                        switch($request->category) {
                            case "GG":
                                $response2 = $this->ggtips->store(new GgtipsRequest($request2),$request->user_id);
                                break;
                            case "DAILY 2 ODD":
                                $response2 = $this->daily2odds->store(new Daily2oddsRequest($request2),$request->user_id);
                                break;
                        }
                    if($response2) $this->finalRes = 1;
                }
                break;
                case "DAILY 2 ODD":
                    //Delete from old category
                    $path = $this->daily2odds->show($request->id)->image;
                    $request2 = array_add($request->all(),'path',$path);
                    $response1 = $this->daily2odds->destroy($this->daily2odds->show($request->id),true);
                    
                    //Add to new category
                    if($response1){
                        switch($request->category) {
                            
                            case "GG":
                                $response2 = $this->ggtips->store(new GgtipsRequest($request2),$request->user_id);
                                break;
                            case "ROLLOVERS":
                                $response2 = $this->rollovers->store(new RolloversRequest($request2),$request->user_id);
                                break;
                        }
                    if($response2) $this->finalRes = 1;
                }
                break;
                default:
                $response = 'Error';
                break;
            }
        }else if($request->update == 'false'){

            $response2 = '';

            switch($request->category) {
                
                case "GG":                   
                    $ggtips = Ggtips::find($request->id);
                    $response2 = $ggtips->update([
                                'teams' => $request->teams,
                                 'tip' => $request->tip,
                                'status' => $request->status,
                                 ]);
                                 return;
                    if($response2) $this->finalRes = 1;                  
                break;
                case "ROLLOVERS":
                     $rollovers = Rollovers::find($request->id);                    
                    $response2 = $rollovers->update([
                                'teams' => $request->teams,
                                 'tip' => $request->tip,
                                'status' => $request->status,
                                 ]);
                                 return;
                    if($response2) $this->finalRes = 1;                
                break;
                case "DAILY 2 ODD":
                    $daily2odds = Daily2odds::find($request->id);                    
                    $response2 = $daily2odds->update([
                                'teams' => $request->teams,
                                 'tip' => $request->tip,
                                'status' => $request->status,
                                 ]);    
                                 return;                
                if($response2) $this->finalRes = 1;
                break;
                default:
                $response = 'Error';
                break;
            }

        }
        
            return $response2;
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
