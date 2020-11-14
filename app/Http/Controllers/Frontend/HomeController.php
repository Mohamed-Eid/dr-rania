<?php

namespace App\Http\Controllers\Frontend;

use App\Award;
use App\Category;
use App\Culture;
use App\Delar;
use App\Esteem;
use App\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Job;
use App\Lecture;
use App\Partner;
use App\Post;
use App\Product;
use App\Publication;
use App\Sector;
use App\Testmonial;
use App\Workshop;

class HomeController extends Controller
{
    public function index(){

        $awards = Award::latest()->take(9)->get();

        $publications = [];//TODO : Get From Settings

        $teaching = [];
        
        $teaching['workshops'] = Workshop::latest()->take(2)->get();
        $teaching['lectures']  = Lecture::latest()->take(2)->get();
 
        $congress = Event::latest()->take(3)->get();

        $esteems = Esteem::latest()->take(4)->get();

        //dd($congress);

        return view('frontend.index',compact('awards','publications','teaching','congress','esteems'));
    }

}

