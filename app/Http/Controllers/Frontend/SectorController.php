<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Sector;

class SectorController extends Controller
{
    public function index(){
        $sectors = Sector::all();
        return view('frontend.sectors.index',compact('sectors'));
    }
}
