<?php

namespace App\Http\Controllers\Frontend;

use App\Category;
use App\Culture;
use App\Delar;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Job;
use App\Partner;
use App\Post;
use App\Product;
use App\Sector;
use App\Testmonial;

class HomeController extends Controller
{
    public function index(){
        $partners = Partner::all();
        $posts    = Post::take(3)->latest()->get();
        return view('frontend.index',compact('partners','posts'));
    }

    public function search(Request $request){
        $data = [
            'news'        => Post::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'partners'    => Partner::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'testmonials' => Testmonial::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'poducts'     => Product::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'categories'  => Category::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'sectors'     => Sector::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'jobs'        => Job::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'cultures'    => Culture::whereTranslationLike('name', '%' . $request->search . '%')->get(),
            'delars'      => Delar::whereTranslationLike('name', '%' . $request->search . '%')->get(),
        ];

        return view('frontend.search.index',compact('data'));
    }


}

