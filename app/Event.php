<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Event extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path' , 'publish_date'];

    public  function getImagePathAttribute(){
        return asset('uploads/congress_images/'.$this->image);
    }
    public function getPublishDateAtAttribute()
    {
        return \Carbon\Carbon::createFromFormat('Y-m-d', $this->date)->format('j F, Y');
    }

    public function esteems()
    {
        return $this->morphMany(Esteem::class, 'esteemable');
    }


}
