<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Page;
use App\PageImage;
use Illuminate\Validation\Rule;
use Illuminate\Support\Collection;

class PageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pages = page::paginate(10);
        return view('dashboard.pages.index',compact('pages'));
    } 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.pages.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd(request()->all());
        $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('page_translations','name')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('page_translations','body')]];

        }

        $request->validate($rules);
        
        $data = $request->all();

        $data['image'] = 'default.png';

        if( isset($request->image)) {
             $data['image'] = upload_image('page_images',$request->image,400,400);
        }
        

        Page::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.pages.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Page $page)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Page $page)
    {
        return view('dashboard.pages.edit',compact('page'));
    }


    public function upload_images(Page $page){        
        $request_images = Collection::wrap(request()->file('file'));

        $request_images->each(function($image) use ($page){
            $image_name = upload_image('page_images',$image);
            $page->page_images()->create([
                'image' => $image_name,
            ]);
        });
    } 

    public function delete_image(Page $page, $id){
        $image = PageImage::find($id);
        if ($image->image != 'default.png') {
            delete_image('page_images',$image->image);
        } 

        $image->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.pages.edit',$page);        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Page $page)
    {
       $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('page_translations','name')->ignore($page->id,'page_id')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('page_translations','body')->ignore($page->id,'page_id')]];

        }

        $request->validate($rules);
        
        $data = $request->all();


        if( isset($request->image)) {
             $data['image'] = upload_image('page_images',$request->image,400,400);
        }
        

        $page->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.pages.edit',$page);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Page $page)
    {
        if ($page->image != 'default.png') {
            delete_image('page_images',$page->image);
        } 

        $page->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.pages.index');
    }
}
