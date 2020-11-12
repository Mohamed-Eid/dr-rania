<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Esteem extends Model
{
    protected $guarded = [];

    protected $appends = ['image_path'];

    public  function getImagePathAttribute(){
        return asset('uploads/esteem_images/'.$this->image);
    }

    public function esteemable()
    {
        return $this->morphTo();
    }
}
