<?php

namespace App\Http\Controllers\Frontend;

use App\CenterAward;
use App\CenterPhotoAlbum;
use App\CenterPublication;
use App\CenterVideo;
use App\CenterWorkshop;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Message;
use App\Service;
use App\Slider;
use App\Subscriber;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    public function center_of_cairo(){

        $awards = CenterAward::all();
        $publications = CenterPublication::all();
        $workshops = CenterWorkshop::all();
        $videos = CenterVideo::all();
        $photos = CenterPhotoAlbum::all();


        //TODO: get settings
        return view('frontend.pages.center_of_cairo',compact('awards','publications','workshops','videos','photos'));
    }

    public function center_of_excellence(){
        $sliders = Slider::all();
        $services = Service::all();

        return view('frontend.pages.center_excellence',compact('sliders','services'));
    }

    public function contact_us(){
        return view('frontend.pages.contact_us');
    }

    public function contact_us_store(Request $request){
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'body'  => 'required', 
        ]);

        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->all()[0])->withInput();
        }

        Message::create($request->all());

        return redirect()->back()->with('success','Message Sent Successfully');
    }

    public function basic_info(){
        return view('frontend.pages.basic_info');
    }

    public function subscribe(Request $request){

        $validator = Validator::make($request->all(), [
            'email' => 'required|unique:subscribers',
        ]);
        if ($validator->fails()) {
            return back()->with('error', $validator->messages()->all()[0])->withInput();
        }

        Subscriber::create($request->all());

        return redirect()->back()->with('success','Subscribed Successfully');
    }

}
