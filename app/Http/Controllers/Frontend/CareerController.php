<?php

namespace App\Http\Controllers\Frontend;

use App\Applicant;
use App\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Job;

class CareerController extends Controller
{
    public function index(){
        $departments = Department::all();
        return view('frontend.careers.index',compact('departments'));
    }

    public function vacancies(Department $department){
        //$jobs = $department->jobs;
        $jobs = Job::where('department_id',$department->id)->paginate(10);
        //todo get jobs thet don't exceed the deadline
        return view('frontend.careers.vacancies',compact('jobs'));
    }

    public function vacancy(Department $department, Job $job){
        return view('frontend.careers.vacancy',compact('job'));
    }

    public function apply(Department $department, Job $job){
        return view('frontend.careers.apply',compact('job'));
    }

    public function apply_post(Department $department, Job $job){
        //dd(request()->all());
        //'career_files'
        //todo return errors
        $rules = [
            'cv' => 'required|max:10000|mimes:doc,docx,pdf,jpg,png',
            'fullname' => 'required',
            'email' => 'required',
            'current_job_title' => 'required',
            'current_job_location' => 'required',
            'qualifications' => 'required',
            'years_of_experience' => 'required',
        ];

        //complete validation & applicatnts in admin panel

        request()->validate($rules);
        
        $data = request()->except(['cv']);

        $data['job_id'] = $job->id;
        $data['cv'] = upload_file('career_files',request()->cv);

        Applicant::create($data);

        session()->flash('success', __('site.added_successfully'));

        return redirect()->back();

    }


}
