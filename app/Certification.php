<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Certification extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path'];

    public  function getImagePathAttribute(){
        return asset('uploads/certification_images/'.$this->image);
    }
}
