<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Workshop;

class WorkshopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $workshops = Workshop::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);
        // $workshops = Workshop::paginate(10);
        return view('dashboard.workshops.index',compact('workshops'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.workshops.create');
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
            'title'   => 'required',
            'body'   => 'required',
            'country' => 'required',
            'year'    => 'required',
            'image'   => 'required',
        ]);

        $data = $request->except(['image']);
        $data['image'] = upload_image_without_resize('workshop_images',$request->image);

        Workshop::create($data);

        return redirect()->route('dashboard.workshops.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Workshop $workshop)
    {
        return view('dashboard.workshops.edit', compact('workshop'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Workshop $workshop)
    {
        $request->validate([
            'title'   => 'required',
            'body'   => 'required',
            'country' => 'required',
            'year'    => 'required',
        ]);

        $data = $request->except(['image']);

        if($request->has('image')){
            delete_image('workshop_images',$workshop->image);
            $data['image'] = upload_image_without_resize('workshop_images',$request->image);
        }

        $workshop->update($data);

        return redirect()->route('dashboard.workshops.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Workshop $workshop)
    {
        delete_image('workshop_images',$workshop->image);
        $workshop->delete();
        return redirect()->route('dashboard.workshops.index')->with('success','تم الحذف بنجاح');
    }
}
