<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;

class UserResource extends JsonResource
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
        'full_name' => $this->full_name,
        'service_number' => $this->service_number, 
        'email' => $this->email,
        'admin' => $this->admin_right,
        'rank' => $this->rank,
        'unit' => $this->unit,
        'phone' => $this->phone,
        'ucommand' => $this->ucommand,
        'clerk' => $this->clerk,
        'last_login' => $this->last_login,
        'date_added' => $this->created_at ? $this->created_at->format('Y-m-d H:i:s'): null,
        'image' => $this->image == '' ? '/images/default.png' : Storage::disk('public')->url($this->image)
        ];
    }
}
