<?php

namespace App\Http\Controllers\Frontend;

use App\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CongressController extends Controller
{
    public function index(){
        $congress = Event::all();
        return view('frontend.congress.index',compact('congress'));
    }
}
