<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Lecture;

class LectureController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $lectures = Lecture::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);
        // $lectures = Lecture::paginate(10);
        return view('dashboard.lectures.index',compact('lectures'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.lectures.create');
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
            'body'     => 'required',
            'video'    => 'required',
        ]);

        // $data = $request->except(['video']);
        // $data['video'] = get_video_id($request->video);

        Lecture::create($request->all());

        return redirect()->route('dashboard.lectures.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Lecture $lecture)
    {
        return view('dashboard.lectures.edit', compact('lecture'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Lecture $lecture)
    {
        $request->validate([
            'title'    => 'required',
            'body'     => 'required',
            'video'    => 'required',
        ]);

        // $data = $request->except(['video']);
        // $data['video'] = get_video_id($request->video);

        $lecture->update($request->all());

        return redirect()->route('dashboard.lectures.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Lecture $lecture)
    {
        $lecture->delete();
        return redirect()->route('dashboard.lectures.index')->with('success','تم الحذف بنجاح');
    }
}
