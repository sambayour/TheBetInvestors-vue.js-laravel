<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Daily2odds extends Model
{
    protected $fillable = ['country', 'teams', 'tip', 'status'];
}
