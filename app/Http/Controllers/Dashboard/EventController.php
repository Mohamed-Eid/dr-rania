<?php

namespace App\Http\Controllers\Dashboard;

use App\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $events = Event::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);

        return view('dashboard.congress.index',compact('events')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.congress.create');
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
            'congress_title' => 'required',
            'event_title'    => 'required',
            'location'       => 'required',
            'date'           => 'required',
            'role'           => 'required',
        ]);

        $data = $request->except(['image']);

        if($request->has('image')){
            $data['image'] = upload_image_without_resize('congress_images',$request->image);
        }

        Event::create($data);

        return redirect()->route('dashboard.congress.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Event $congress)
    {
        return view('dashboard.congress.edit', compact('congress'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Event $congress)
    {
        $request->validate([
            'congress_title' => 'required',
            'event_title'    => 'required',
            'location'       => 'required',
            'date'           => 'required',
            'role'           => 'required',
        ]);

        $data = $request->except(['image']);

        if($request->has('image')){
            delete_image('congress_images',$congress->image);
            $data['image'] = upload_image_without_resize('congress_images',$request->image);
        }

        $congress->update($data);

        return redirect()->route('dashboard.congress.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Event $congress)
    {
        delete_image('congress_images',$congress->image);
        $congress->delete();
        return redirect()->route('dashboard.congress.index')->with('success','تم الحذف بنجاح');
    }
}
