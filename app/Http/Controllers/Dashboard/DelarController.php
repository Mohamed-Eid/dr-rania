<?php

namespace App\Http\Controllers\Dashboard;

use App\City;
use App\Delar;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\AreaResource;
use Illuminate\Validation\Rule;

class DelarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $cities = City::all();
        
        $delars = Delar::when($request->search , function ($q) use ($request){
            return $q->whereTranslationLike('name','%'.$request->search.'%');
        })->latest()->paginate(10);
        
        return view('dashboard.delars.index',compact('cities','delars'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cities = City::all();
        return view('dashboard.delars.create',compact('cities'));
    }


    public function areas_by_city_id(City $city){
        return AreaResource::collection($city->areas);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd(request()->all());
        $rules = [
            'area_id' => 'required',
            'city_id' => 'required',
            'contact_info' => 'required',
            'map'          => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('delar_translations','name')]];
            $rules += [$locale.'.address' => ['required']];
        }
        
        $data = $request->all();


        $request->validate($rules);

        Delar::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.delars.index');
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
    public function edit(Delar $delar)
    {
        $cities = City::all();
        return view('dashboard.delars.edit',compact('cities','delar'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Delar $delar)
    {
        $rules = [
            'area_id' => 'required',
            'city_id' => 'required',
            'contact_info' => 'required',
            'map'          => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required']];
            $rules += [$locale.'.address' => ['required']];
        }
        
        $data = $request->all();


        $request->validate($rules);

        $delar->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Delar $delar)
    {
        $delar->delete();
        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.delars.index');
    }
}
