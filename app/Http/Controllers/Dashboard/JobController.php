<?php

namespace App\Http\Controllers\Dashboard;

use App\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Job;
use Illuminate\Validation\Rule;

class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $jobs = Job::paginate(10);
        return view('dashboard.jobs.index',compact('jobs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments = Department::all();
        return view('dashboard.jobs.create',compact('departments'));
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
            'deadline' => 'required',
            'department_id' => 'required'
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name'             => ['required']];
            $rules += [$locale.'.responsabilities' => ['required']];
            $rules += [$locale.'.qualifications'   => ['required']];
            $rules += [$locale.'.salary'           => ['required']];
            $rules += [$locale.'.benefits'         => ['required']];
            $rules += [$locale.'.reporting_line'   => ['required']];
            $rules += [$locale.'.contract_type'    => ['required']];
        }

        $request->validate($rules);
        
        $data = $request->all();


        job::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.jobs.index');
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
    public function edit(Job $job)
    {
        $departments = Department::all();

        return view('dashboard.jobs.edit',compact('job','departments'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Job $job)
    {
        $rules = [
            'deadline' => 'required',
            'department_id' => 'required'
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name'             => ['required']];
            $rules += [$locale.'.responsabilities' => ['required']];
            $rules += [$locale.'.qualifications'   => ['required']];
            $rules += [$locale.'.salary'           => ['required']];
            $rules += [$locale.'.benefits'         => ['required']];
            $rules += [$locale.'.reporting_line'   => ['required']];
            $rules += [$locale.'.contract_type'    => ['required']];
        }

        $request->validate($rules);
        
        $data = $request->all();

        $job->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.jobs.edit',$job);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Job $job)
    {

        $job->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.jobs.index');
    }
}
