<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
    use \Dimsav\Translatable\Translatable;

    public $translatedAttributes = ['name','value','title','description','link'];

    public $guarded = [];

    public  function getImagePathAttribute(){
        return asset('uploads/setting_images/'.$this->image);
    }

} 