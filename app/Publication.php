<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publication extends Model
{
    protected $guarded = [];
    
    protected $appends = ['icon_path','pdf_path'];

    public  function getIconPathAttribute(){
        return asset('uploads/publication_images/'.$this->icon);
    }

    public  function getPdfPathAttribute(){
        return asset('uploads/publication_pdfs/'.$this->pdf);
    }
}
