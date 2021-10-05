<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trebles extends Model
{
    protected $fillable = ['country','teams', 'tip', 'status'];
}
