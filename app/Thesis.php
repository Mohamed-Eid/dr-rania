<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Thesis extends Model
{
    protected $guarded = [];
    
    protected $appends = ['image_path','pdf_path'];

    public  function getIconPathAttribute(){
        return asset('uploads/thesis_images/'.$this->image);
    }

    public  function getPdfPathAttribute(){
        return asset('uploads/thesis_pdfs/'.$this->pdf);
    }
}
