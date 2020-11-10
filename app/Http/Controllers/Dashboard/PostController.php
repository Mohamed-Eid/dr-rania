<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Surgery;
use Illuminate\Validation\Rule;

class PostController extends Controller
{ 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // $posts = Post::paginate(10);
        $posts = Post::when($request->search , function ($q) use ($request){
            return $q->whereTranslationLike('name','%'.$request->search.'%');
        })->latest()->paginate(10);
        return view('dashboard.posts.index',compact('posts'));  
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create');    
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('post_translations','name')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('post_translations','name')]];
        }

        $request->validate($rules);
        
        $data = $request->all();
       
        $data['image'] = 'default.png';

        if( isset($request->image)) {
             $data['image'] = upload_image('blog_images',$request->image);
        }

        Post::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.blog.index');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $blog)
    {
        //dd($blog);
        return view('dashboard.posts.edit',[ 'post' => $blog]);    
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Post $blog)
    {
        $rules = [
        ];
        //dd($blog);
        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('post_translations','name')->ignore($blog->id,'post_id')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('post_translations','body')->ignore($blog->id,'post_id')]];
        }

        $request->validate($rules);
        
        $data = $request->all();
       
        if( isset($request->image)) {
             $data['image'] = upload_image('blog_images',$request->image);
        }

        $blog->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.blog.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $blog)
    {
        if ($blog->image != 'default.png') {
            delete_image('blog_images',$blog->image);
        } 

        $blog->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.blog.index');    
    }
}
