<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdsRequest extends FormRequest
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
        if ($this->getMethod() == 'POST') {
            return [
                "url" => 'required|string',
                'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:15000'
            ];
        }
        return [
                "url" => 'required|string',
                'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:15000'
            ];
    }
}
