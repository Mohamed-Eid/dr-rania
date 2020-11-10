<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Partner;
use Illuminate\Validation\Rule;

class PartnerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $partners = Partner::paginate(10);
        return view('dashboard.partners.index',compact('partners'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.partners.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [ 'image' => 'required'];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('partner_translations','name')]];
        }

        $request->validate($rules);
        
        $data = $request->all();

        $data['image'] = upload_image('partner_images',$request->image);

        $partner = Partner::create($data);


        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.partners.index');
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
    public function edit(Partner $partner)
    {
        return view('dashboard.partners.edit', compact('partner'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Partner $partner)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('partner_translations','name')->ignore($partner->id,'partner_id')]];
        }

        $request->validate($rules);

        $data = $request->all();

        if(isset($request->image)) {
            delete_image('partner_images',$partner->image);
            $data['image'] = upload_image('partner_images',$request->image);
        }
        
        
        $partner->update($data);


        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.partners.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Partner $partner)
    {
        delete_image('partner_images',$partner->image);


        $partner->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.partners.index');
    }
}
