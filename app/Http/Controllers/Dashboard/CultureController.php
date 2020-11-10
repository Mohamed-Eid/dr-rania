<?php

namespace App\Http\Controllers\Dashboard;

use App\Culture;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;

class CultureController extends Controller
{

    public function index()
    {
        $cultures = Culture::paginate(10);
        return view('dashboard.cultures.index',compact('cultures'));
    }


    public function create()
    {
        return view('dashboard.cultures.create');
    }


    public function store(Request $request)
    {
        $rules = [
            'image' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('culture_translations','name')]];
            $rules += [$locale.'.job' => ['required' ,Rule::unique('culture_translations','job')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('culture_translations','body')]];
        }
 
        $request->validate($rules);
        
        $data = $request->all();


        $data['image'] = upload_image('culture_images',$request->image,400,400);

        

        Culture::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.cultures.index');
    }


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
    public function edit(Culture $culture)
    {
        return view('dashboard.cultures.edit',compact('culture'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Culture $culture)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('culture_translations','name')->ignore($culture->id,'culture_id')]];
            $rules += [$locale.'.job' => ['required' ,Rule::unique('culture_translations','job')->ignore($culture->id,'culture_id')]];
            $rules += [$locale.'.body' => ['required' ,Rule::unique('culture_translations','body')->ignore($culture->id,'culture_id')]];

        }

        $request->validate($rules);
        
        $data = $request->all();


        if( isset($request->image)) {
            delete_image('culture_images',$culture->image);
            $data['image'] = upload_image('culture_images',$request->image,400,400);
        }
        

        $culture->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.cultures.edit',$culture);
    }


    public function destroy(Culture $culture)
    {
        delete_image('culture_images',$culture->image);
        
        $culture->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.cultures.index');

    }
}
