<?php

namespace App\Http\Controllers\Frontend;

use App\Esteem;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EsteemController extends Controller
{
    public function index(){
        $esteems = Esteem::all();
        return view('frontend.esteems.index',compact('esteems'));
    }
}
