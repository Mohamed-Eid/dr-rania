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

class UniversityCenterController extends Controller
{
    public function index(){
        $awards = CenterAward::paginate(10);
        $publications = CenterPublication::paginate(10);
        $workshops = CenterWorkshop::paginate(10);
        $videos = CenterVideo::paginate(10);
        $photos = CenterPhotoAlbum::paginate(10);


        return view('dashboard.pages.center_in_cairo',compact('awards','publications','workshops','videos','photos'));
    }

    /**
     * ======================= AWARDS ============================
     */
    public function store_awards(Request $request){
        $request->validate([
            'title' => 'required',
            'year' => 'required',
            'image' => 'required',
        ]);

        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        CenterAward::create($data);
        return redirect()->back()->with('success','Award Added Successfuly');
    }

    public function update_awards(Request $request, CenterAward $award){
        $request->validate([
            'title' => 'required',
            'year' => 'required',
        ]);

        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        $award->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Award updated Successfuly');
    }

    public function delete_awards(CenterAward $award){
        delete_image('center_images',$award->image);
        $award->delete();
        return redirect()->back()->with('success','Award Deleted Successfuly');
    }

    /**
     * ======================= PUBLICATIONS ============================
    */

    public function store_publications(Request $request){
        $request->validate([
            'title' => 'required',
            'author' => 'required',
            'publisher' => 'required',
            'year' => 'required',
            'image' => 'required',
        ]);

        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        CenterPublication::create($data);
        return redirect()->back()->with('success','Publication Added Successfuly');
    }

    public function update_publications(Request $request, CenterPublication $publication){
        $request->validate([
            'title' => 'required',
            'author' => 'required',
            'publisher' => 'required',
            'year' => 'required',
        ]);
        
        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        $publication->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Publication updated Successfuly');
    }

    public function delete_publications(CenterPublication $publication){
        delete_image('center_images',$publication->image);
        $publication->delete();
        return redirect()->back()->with('success','Publication Deleted Successfuly');
    }

    /**
     * ======================= WORKSHOPS ============================
    */

    public function store_workshops(Request $request){
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'image' => 'required',
        ]);

        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        CenterWorkshop::create($data);
        return redirect()->back()->with('success','Workshop Added Successfuly');
    }

    public function update_workshops(Request $request, CenterWorkshop $workshop){
        $request->validate([
            'title' => 'required',
            'body' => 'required',
        ]);
        
        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        $workshop->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Workshop updated Successfuly');
    }

    public function delete_workshops(CenterWorkshop $workshop){
        delete_image('center_images',$workshop->image);
        $workshop->delete();
        return redirect()->back()->with('success','Workshop Deleted Successfuly');
    }

    /**
     * ======================= VIDEOS ============================
    */

    public function store_videos(Request $request){
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'link' => 'required',
        ]);

        $data = $request->all();
        CenterVideo::create($data);
        return redirect()->back()->with('success','Video Added Successfuly');
    }

    public function update_videos(Request $request, CenterVideo $video){
        $request->validate([
            'title' => 'required',
            'body' => 'required',
            'link' => 'required',
        ]);
        
        $data = $request->all();
        
        $video->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Video updated Successfuly');
    }

    public function delete_videos(CenterVideo $video){
        $video->delete();
        return redirect()->back()->with('success','Video Deleted Successfuly');
    }

    /**
     * ======================= WORKSHOPS ============================
    */

    public function store_photos(Request $request){
        $request->validate([
            'title' => 'required',
            'image' => 'required',
        ]);

        $data = $request->except('image');
        $data['image'] = upload_image_without_resize('center_images',$request->image);
        CenterPhotoAlbum::create($data);
        return redirect()->back()->with('success','Image Added Successfuly');
    }

    public function update_photos(Request $request, CenterPhotoAlbum $photo){
        $request->validate([
            'title' => 'required',
        ]);
        
        $data = $request->except('image');
        if($request->has('image')){
            $data['image'] = upload_image_without_resize('center_images',$request->image);
        }
        
        $photo->update($data);

        return redirect()->route('dashboard.center.index')->with('success','Image updated Successfuly');
    }

    public function delete_photos(CenterPhotoAlbum $photo){
        delete_image('center_images',$photo->image);
        $photo->delete();
        return redirect()->back()->with('success','Image Deleted Successfuly');
    }

}
