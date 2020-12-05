<?php

namespace App\Http\Controllers\Dashboard;

use App\Award;
use App\CenterAward;
use App\CenterPhotoAlbum;
use App\CenterPublication;
use App\CenterVideo;
use App\CenterWorkshop;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Service;
use App\Slider;

class ExcellenceCenterController extends Controller
{
    public function index(){
        $sliders = Slider::paginate(10);
        $services = Service::paginate(10);

        return view('dashboard.pages.excellence_center',compact('sliders','services'));
    }
 
    /**
     * ======================= AWARDS ============================
     */
    public function store_slider(Request $request){
        $request->validate([
            'title' => 'required',
            'image' => 'required',
        ]);

        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        Slider::create($data);
        return redirect()->back()->with('success','Image Added Successfuly');
    }

    public function update_slider(Request $request, Slider $slider){
        $request->validate([
            'title' => 'required',
        ]);

        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        $slider->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Image updated Successfuly');
    }

    public function delete_slider(Slider $slider){
        delete_image('center_images',$slider->image);
        $slider->delete();
        return redirect()->back()->with('success','Image Deleted Successfuly');
    }

    /**
     * ======================= SERVICES ============================
    */

    public function store_services(Request $request){
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'image' => 'required',
        ]);
 
        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        Service::create($data);
        return redirect()->back()->with('success','Service Added Successfuly');
    }

    public function update_services(Request $request, Service $service){
       // dd($service);
        $request->validate([
            'title' => 'required',
            'body' => 'required',
        ]);
        
        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        //dd($data);
        $service->update($data);

        return redirect()->back()->with('success','Service updated Successfuly');
    }

    public function delete_services(Service $service){
        delete_image('center_images',$service->image);
        $service->delete();
        return redirect()->back()->with('success','Service Deleted Successfuly');
    }

}
