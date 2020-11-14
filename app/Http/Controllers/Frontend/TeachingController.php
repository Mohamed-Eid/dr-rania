<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Lecture;
use App\Workshop;

class TeachingController extends Controller
{
    public function lectures(){

        $lectures = Lecture::paginate(9);
        return view('frontend.teaching.lectures',compact('lectures'));
    
    }

    public function workshops(){

        $workshops = Workshop::paginate(9);
        return view('frontend.teaching.workshops',compact('workshops'));
    
    }
}
