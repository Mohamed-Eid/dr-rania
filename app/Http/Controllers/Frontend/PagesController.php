<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Image;
use App\Page;

class PagesController extends Controller
{
    public function about_page()
    {
        $page = Page::first();
        return view('frontend.pages.index',compact('page'));
    }

    public function before_after(){
        $images = Image::all();
        return view('frontend.pages.before_after',compact('images'));
    }
}
