<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;
use App\Daily2odds;

class Daily2oddsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [        
            'id' => $this->id,     
            'category' => 'DAILY 2 ODD',
            'country' => $this->country,
            'teams' => $this->teams,
            'tip' => $this->tip, 
            'status' => $this->status, 
            'created_at' => $this->created_at ? date('F d, Y',strtotime($this->created_at)): null,
            'updated_at' => $this->updated_at ? date('F d, Y',strtotime($this->updated_at)): null,
        ];
    }
}
