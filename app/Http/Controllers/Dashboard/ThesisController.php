<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Thesis;

class ThesisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $theses = Thesis::when($request->type , function ($q) use ($request){
            return $q->where('type','like','%'.$request->type.'%');
        })->latest()->paginate(10);

        return view('dashboard.theses.index',compact('theses'));    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.theses.create');
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
            'title'           => 'required',
            'degree'          => 'required',
            'student_name'    => 'required',
            'supervisors'     => 'required',
            'discussion_year' => 'required',
            'image'           => 'required',
            'pdf'             => 'required|mimes:pdf|max:10000',
        ]);

        $data = $request->except(['pdf','image']);

        $data['image'] = upload_image_without_resize('thesis_images',$request->image);
        $data['pdf'] = upload_file('thesis_pdfs',$request->pdf);

        Thesis::create($data);

        return redirect()->route('dashboard.theses.index')->with('success','تمت الإضافه بنجاح');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Thesis $thesis)
    {
        return view('dashboard.theses.edit', compact('thesis'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Thesis $thesis)
    {
        $request->validate([
            'title'           => 'required',
            'degree'          => 'required',
            'student_name'    => 'required',
            'supervisors'     => 'required',
            'discussion_year' => 'required',
            'image'           => 'required',
            'pdf'             => 'required|mimes:pdf|max:10000',
        ]);

        $data = $request->except(['pdf','image']);


        if($request->has('image')){
            delete_image('thesis_images',$thesis->image);
            $data['image'] = upload_image_without_resize('thesis_images',$request->image);
        }

        if($request->has('pdf')){
            $request->validate([
                'pdf'    => 'mimes:pdf|max:10000',
            ]);
            delete_image('thesis_pdfs',$thesis->pdf);
            $data['pdf'] = upload_file('thesis_pdfs',$request->pdf);
        }

        $thesis->update($data);

        return redirect()->route('dashboard.theses.index')->with('success','تمت التعديل بنجاح');        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Thesis $thesis)
    {
        if($thesis->image){
            delete_image('thesis_images',$thesis->image);
        }

        if($thesis->pdf){
            delete_image('thesis_pdfs',$thesis->pdf);
        }
 
        $thesis->delete();
        
        return redirect()->route('dashboard.theses.index')->with('success','تم الحذف بنجاح');
    }
}
