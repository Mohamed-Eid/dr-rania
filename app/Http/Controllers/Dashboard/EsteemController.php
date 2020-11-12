<?php

namespace App\Http\Controllers\Dashboard;

use App\Esteem;
use App\Event;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EsteemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $esteems = Esteem::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);

        return view('dashboard.esteems.index',compact('esteems')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $congress = Event::all();
        return view('dashboard.esteems.create',compact('congress'));
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
            'type' => 'required',
            'title' => 'required',
            'name' => 'required',
            'body' => 'required',
            'date' => 'required',
            'image' => 'required',
        ]);
        
        $data = $request->except(['congress']);
        $data['image'] = upload_image_without_resize('esteem_images',$request->image);

        if($request->type=="congress"){
            $request->validate([
                'congress' => 'required',
            ]);

            $congress = Event::find($request->congress);

            
            $congress->esteems()->create($data);

            return redirect()->route('dashboard.esteems.index')->with('success','تمت الإضافه بنجاح');
        }



        Esteem::create($data);

        return redirect()->route('dashboard.esteems.index')->with('success','تمت الإضافه بنجاح');

    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Esteem $esteem)
    {
        $congress = Event::all();

        return view('dashboard.esteems.edit', compact('esteem','congress'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Esteem $esteem)
    {
        $request->validate([
            'type' => 'required',
            'title' => 'required',
            'name' => 'required',
            'body' => 'required',
            'date' => 'required',
            // 'image' => 'required',
        ]);

        $data = $request->except(['congress']);

        if($request->has('image')){
            delete_image('esteem_images',$esteem->image);
            $data['image'] = upload_image_without_resize('esteem_images',$request->image);
        }

        if($request->type=="congress"){
            $request->validate([
                'congress' => 'required',
            ]);

            $congress = Event::find($request->congress);
            
            $data['esteemable_id'] = $congress->id;
            $data['esteemable_type'] = get_class($congress);

            $esteem->update($data);

            return redirect()->route('dashboard.esteems.index')->with('success','تم التعديل بنجاح');
        }

        $data['esteemable_id'] = null;
        $data['esteemable_type'] = null;

        $esteem->update($data);

        return redirect()->route('dashboard.esteems.index')->with('success','تم التعديل بنجاح');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Esteem $esteem)
    {
        delete_image('esteem_images',$esteem->image);
        $esteem->delete();
        return redirect()->route('dashboard.esteems.index')->with('success','تم الحذف بنجاح');    }
}
