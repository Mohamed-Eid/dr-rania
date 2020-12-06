<?php

namespace App\Http\Controllers\Dashboard;

use App\HomeObject;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ObjectController extends Controller
{
    public function case_author(){
        return view('dashboard.case_author.index');
    }

    public function home_publications(){
        return view('dashboard.home_publications.index');
    }

    public function edit_case_author(Request $request){
        //dd($request->all());
        //dd(request()->all());
        foreach (request()->except(['_token','_method']) as $key => $value) {

            $obj = HomeObject::find($key);

            if(isset($value['image'])){
                delete_image('object_images',$obj->image);
                $value['image'] = upload_image_without_resize('object_images',$value['image']);
            }else{
                $value['image'] =  $obj->value['image'];
            }

            $obj->update(['value' => $value]);
        }

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }
}
