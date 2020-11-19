<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Workshop extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path'];

    public  function getImagePathAttribute(){
        return asset('uploads/workshop_images/'.$this->image);
    }

    public function esteems()
    {
        return $this->morphMany(Esteem::class, 'esteemable');
    }
}
