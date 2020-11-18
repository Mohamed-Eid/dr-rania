<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CenterPublication extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path'];

    public  function getImagePathAttribute(){
        return asset('uploads/center_images/'.$this->image);
    }
}
