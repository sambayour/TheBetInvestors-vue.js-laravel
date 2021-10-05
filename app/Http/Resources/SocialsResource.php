<?php
 
namespace App\Http\Resources;
 
use Illuminate\Http\Resources\Json\JsonResource;
 
class SocialsResource extends JsonResource
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
            'facebook' => $this->facebook,  
            'twitter' => $this->twitter,
            'telegram' => $this->telegram,
            'created_at' => $this->created_at ? date('F d, Y',strtotime($this->created_at)): null,
            'updated_at' => $this->updated_at ? date('F d, Y',strtotime($this->updated_at)): null
        ];    }
}
