<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HomeObject extends Model
{
    protected $guarded = [];

    protected $casts = [
        'value' => 'array'
    ];
}
