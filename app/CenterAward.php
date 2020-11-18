<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CenterAward extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path'];

    public  function getImagePathAttribute(){
        return asset('uploads/center_images/'.$this->image);
    }
}
