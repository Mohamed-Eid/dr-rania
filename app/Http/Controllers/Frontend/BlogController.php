<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use Psy\Command\ShowCommand;

class BlogController extends Controller
{
    public function index(){
        $articles = Post::paginate(5);
        return view('frontend.blog.index',compact('articles'));
    }

    public function show(Post $post){
        return view('frontend.blog.show',compact('post'));
    }
}
