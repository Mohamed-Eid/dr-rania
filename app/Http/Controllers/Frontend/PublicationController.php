<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Publication;

class PublicationController extends Controller
{
    public function books()
    {
        $publications = Publication::where('type','book')->get();
        return view('frontend.publications.books',compact('publications'));
    }

    public function articles()
    {
        $publications = Publication::where('type','article')->get();
        return view('frontend.publications.books',compact('publications'));
    }

    public function researches()
    {
        $publications = Publication::where('type','research')->get();
        return view('frontend.publications.books',compact('publications'));
    }
}
