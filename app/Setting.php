<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    protected $guarded = [];

    public  function getImagePathAttribute(){
        return asset('uploads/setting_images/'.$this->image);
    }
}
