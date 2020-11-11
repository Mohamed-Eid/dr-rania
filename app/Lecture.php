<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lecture extends Model
{
    protected $guarded = [];
    public $appends = ['video_id'];

    public function getVideoIdAttribute()
    {
        return get_video_id($this->video);
    }
}
