<?php

namespace App\Http\Controllers\Dashboard;

use App\Certification;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CertificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $certifications = Certification::when($request->search , function ($q) use ($request){
            return $q->where('title','like','%'.$request->search.'%');
        })->latest()->paginate(10);

        return view('dashboard.certifications.index',compact('certifications'));    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.certifications.create');
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
            'major'    => 'required',
            'year'     => 'required',
            'grade'    => 'required',
            'image'    => 'required',
        ]);

        $data = $request->except(['image']);

        $data['image'] = upload_image_without_resize('certification_images',$request->image);

        Certification::create($data);

        return redirect()->route('dashboard.certifications.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Certification $certification)
    {
        return view('dashboard.certifications.edit', compact('certification'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Certification $certification)
    {
        $request->validate([
            'title'    => 'required',
            'major'    => 'required',
            'year'     => 'required',
            'grade'    => 'required',
            'image'    => 'required',
        ]);

        $data = $request->except(['image']);

        if($request->has('image')){
            delete_image('certification_images',$certification->image);
            $data['image'] = upload_image_without_resize('certification_images',$request->image);
        }

        $certification->update($data);

        return redirect()->route('dashboard.certifications.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Certification $certification)
    {
        delete_image('certification_images',$certification->image);
        $certification->delete();
        return redirect()->route('dashboard.certifications.index')->with('success','تم الحذف بنجاح');
    }
}
