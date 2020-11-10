<?php

namespace App\Http\Controllers\Dashboard;

use App\Award;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AwardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $awards = Award::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);
        // $awards = Award::paginate(10);
        return view('dashboard.awards.index',compact('awards'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.awards.create');
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
            'country' => 'required',
            'year'    => 'required',
            'image'   => 'required',
        ]);

        $data = $request->except(['image']);
        $data['image'] = upload_image_without_resize('award_images',$request->image);

        Award::create($data);

        return redirect()->route('dashboard.awards.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Award $award)
    {
        return view('dashboard.awards.edit', compact('award'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Award $award)
    {
        $request->validate([
            'title'   => 'required',
            'country' => 'required',
            'year'    => 'required',
            //'image'   => 'required',
        ]);

        $data = $request->except(['image']);

        if($request->has('image')){
            delete_image('award_images',$award->image);
            $data['image'] = upload_image_without_resize('award_images',$request->image);
        }

        $award->update($data);

        return redirect()->route('dashboard.awards.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Award $award)
    {
        delete_image('award_images',$award->image);
        $award->delete();
        return redirect()->route('dashboard.awards.index')->with('success','تم الحذف بنجاح');
    }
}
