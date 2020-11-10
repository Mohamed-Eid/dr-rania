<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Partner;
use App\Testmonial;

class PartnerController extends Controller
{
    public function index(){
        $partners = Partner::all();
        $testmonials = Testmonial::all();
        return view('frontend.partners.index',compact('partners','testmonials'));
    }
}
