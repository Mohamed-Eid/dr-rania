<?php

namespace App\Http\Controllers\Frontend;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Surgery;
use App\Video;

class CategoryController extends Controller
{
    public function index(){
        $categories = Category::where('parent_id',NULL)->has('children')->get();
        return view('frontend.categories.index',compact('categories'));
    }


}
