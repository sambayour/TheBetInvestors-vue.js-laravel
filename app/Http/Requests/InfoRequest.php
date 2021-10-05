<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class InfoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'fname' => 'required|string',
            'lname' => 'required|string',
            'service_number' => 'required|string',
            'email' => 'required|email',
            'rank' => 'required|string',
            'phone' => 'required|string',
            'info' => 'required|string',
            'salary' => 'required|string',
            'location' => 'required|string',
            'unit' => 'required|string',
            'address' => 'required|string'            
        ];
    }
}
