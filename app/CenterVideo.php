<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CenterVideo extends Model
{
    protected $guarded = [];

    protected $appends = ['video_id'];

    public function getVideoIdAttribute()
    {
        return get_video_id($this->link);
    }
}
