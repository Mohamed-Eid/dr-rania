<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Testmonial;
use Illuminate\Validation\Rule;

class TestmonialController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $testmonials = Testmonial::when($request->search, function ($q) use ($request) {
            return $q->whereTranslationLike('name', '%' . $request->search . '%');
        })->latest()->paginate(10);
        //$testmonials = Testmonial::paginate(10);
        return view('dashboard.testmonials.index',compact('testmonials'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.testmonials.create');
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
            'image' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('testmonial_translations','name')]];
            $rules += [$locale.'.job' => ['required' ,Rule::unique('testmonial_translations','job')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('testmonial_translations','body')]];
        }

        $request->validate($rules);
        
        $data = $request->all();


        $data['image'] = upload_image('testmonial_images',$request->image,400,400);

        

        Testmonial::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.testmonials.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Testmonial $testmonial)
    {
        return view('dashboard.testmonials.edit',compact('testmonial'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Testmonial $testmonial)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('testmonial_translations','name')->ignore($testmonial->id,'testmonial_id')]];
            $rules += [$locale.'.job' => ['required' ,Rule::unique('testmonial_translations','job')->ignore($testmonial->id,'testmonial_id')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('testmonial_translations','body')->ignore($testmonial->id,'testmonial_id')]];

        }

        $request->validate($rules);
        
        $data = $request->all();


        if( isset($request->image)) {
            delete_image('testmonial_images',$testmonial->image);
            $data['image'] = upload_image('testmonial_images',$request->image,400,400);
        }
        

        $testmonial->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.testmonials.edit',$testmonial);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Testmonial $testmonial)
    {
        delete_image('testmonial_images',$testmonial->image);
        
        $testmonial->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.testmonials.index');

    }
}
