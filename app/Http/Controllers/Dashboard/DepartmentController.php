<?php

namespace App\Http\Controllers\Dashboard;

use App\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;

class DepartmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // $departments = Department::paginate(10);
        $departments = Department::when($request->search , function ($q) use ($request){
            return $q->whereTranslationLike('name','%'.$request->search.'%');
        })->latest()->paginate(10);
        return view('dashboard.departments.index',compact('departments'));
    } 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.departments.create');
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
            $rules += [$locale.'.name' => ['required' ,Rule::unique('department_translations','name')]];
        }

        $request->validate($rules);
        
        $data = $request->all();

        if( isset($request->image)) {
             $data['image'] = upload_image('department_images',$request->image,400,400);
        }
        

        Department::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.departments.index');
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
    public function edit(Department $department)
    {
        return view('dashboard.departments.edit',compact('department'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Department $department)
    {
        $rules = [
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('department_translations','name')->ignore($department->id,'department_id')]];
        }

        $request->validate($rules);
        
        $data = $request->except(['image']);


        if( isset($request->image)) {
             $data['image'] = upload_image('page_images',$request->image,400,400);
        }
        

        $department->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.departments.edit',$department);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Department $department)
    {
        if ($department->image != 'default.png') {
            delete_image('department_images',$department->image);
        } 

        $department->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.departments.index');
    }
}
