<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Publication;

class PublicationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $publications = Publication::when($request->type , function ($q) use ($request){
            return $q->where('type','like','%'.$request->type.'%');
        })->latest()->paginate(10);

        return view('dashboard.publications.index',compact('publications'));    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.publications.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'    => 'required',
            'body'    => 'required',
            'date'     => 'required',
            'type'    => 'required',
            'icon'    => 'required',
            'pdf'    => 'required|mimes:pdf|max:10000',
        ]);

        $data = $request->except(['icon','pdf','image']);

        $data['icon'] = upload_image_without_resize('Publication_images',$request->icon);
        $data['pdf'] = upload_file('publication_pdfs',$request->pdf);

        if($request->has('image')){
            $data['image'] = upload_image_without_resize('Publication_images',$request->image);
        }

        Publication::create($data);

        return redirect()->route('dashboard.publications.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Publication $publication)
    {
        return view('dashboard.publications.edit', compact('publication'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Publication $publication)
    {
        $request->validate([
            'title'    => 'required',
            'body'    => 'required',
            'date'     => 'required',
            'type'    => 'required',
        ]);

        $data = $request->except(['icon','pdf','image']);

        if($request->has('image')){
            delete_image('publication_images',$publication->image);
            $data['image'] = upload_image_without_resize('publication_images',$request->image);
        }

        if($request->has('icon')){
            delete_image('publication_images',$publication->icon);
            $data['icon'] = upload_image_without_resize('publication_images',$request->icon);
        }

        if($request->has('pdf')){
            $request->validate([
                'pdf'    => 'mimes:pdf|max:10000',
            ]);
            delete_image('publication_pdfs',$publication->pdf);
            $data['pdf'] = upload_file('publication_pdfs',$request->pdf);
        }

        $publication->update($data);

        return redirect()->route('dashboard.publications.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Publication $publication)
    {
        if($publication->image){
            delete_image('publication_images',$publication->image);
        }

        if($publication->icon){
            delete_image('publication_images',$publication->icon);
        }
        
        if($publication->pdf){
            delete_image('publication_pdfs',$publication->pdf);
        }
 
        $publication->delete();
        return redirect()->route('dashboard.publications.index')->with('success','تم الحذف بنجاح');
    }
}
