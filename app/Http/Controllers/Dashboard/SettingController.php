<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $settings = Setting::paginate(20);
        return view('dashboard.settings.index',compact('settings'));
    }

    public function all()
    {

        $settings_classes = DB::table('settings')
            ->select(DB::raw('count(*) as setting_count, class'))
            ->groupBy('class')->get();
        
        $settings = Setting::all();    
        $data = [];

        foreach ($settings as $setting) {
            //$data['dd'][] = $setting;
            foreach ($settings_classes as $class) {
                if($class->class == $setting->class){
                    $setting->class!="" ? $data[$class->class."_settings"][] = $setting : $data["other_settings"][] = $setting; 
                }
            } 
        }
        //dd($data);
        //return view('dashboard.settings.site_settings',compact('data'));
        return view('dashboard.settings.all_settings',compact('data'));

    }
 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.settings.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->location = $request->lat.','.$request->lng;
        $rules = [
            //'lat' => 'required',
            'type' => 'required',
            'key' => 'required|unique:settings',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required']];
            // $rules += [$locale.'.value' => ['required' ,Rule::unique('setting_translations','value')]];
        }

        $request->validate($rules);    
        $data = [
            'type' => '',
            'class' => '',
        ];

        $data['ar'] = $request->ar;
        $data['en'] = $request->en;
        $data['class'] = $request->class;
        $data['key'] = $request->key;

        

        if($request->type == 'text'){
            $data['type'] = 'text';
        }elseif($request->type == 'image'){
            $data['type'] = 'image';
            $data['image'] = upload_image_without_resize('setting_images',$request->value,null,null);
        }else{
            $data['type'] = 'location';
            $data['value'] = $request->location;
        }

        Setting::create($data);
        
        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.settings.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Setting $setting)
    {
        //dd(request()->all());
        $request->location = $request->lat.','.$request->lng;
        $rules = [
            //'lat' => 'required',
            'type' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            //$rules += [$locale.'.key' => ['required' ,Rule::unique('setting_translations','key')]];
            // $rules += [$locale.'.value' => ['required' ,Rule::unique('setting_translations','value')]];
        }

        // $request->validate($rules);    

        $data = $request->all();
  
        if( isset($request->image)) {
            $data['image'] = upload_image_without_resize('setting_images',$request->image,null,null);
       }

       if(isset($request->lang)){
            unset($data['lang']);    
            $data['image'] = $request->lang;
       }

        $setting->update($data);

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }

    public function update_contact(){
        //dd(request()->all());
        foreach (request()->except(['_token','_method']) as $key => $value) {
            //dd($key);
            $setting = Setting::find($key);
            $setting->update($value);
        }

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }


    public function update_about(){
        //dd(request()->all());
        foreach (request()->except(['_token','_method']) as $key => $value) {
            //dd($key);
            $setting = Setting::find($key);
            if(isset($value['image'])){
                //todo : delete image first
                delete_image('setting_images',$setting->image);
                $value['image'] = upload_image_without_resize('setting_images',$value['image']);
            }
            $setting->update($value);
        }

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }

    public function delete_meta_image(Setting $setting){
        //dd($setting);
        delete_image('setting_images',$setting->image);
        $setting->image = null;
        $setting->save();
        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }

    public function update_meta(){
        //dd(request()->all());
        foreach (request()->except(['_token','_method']) as $key => $value) {
            //dd($key);
            $setting = Setting::find($key);
            if(isset($value['image'])){
                //todo : delete image first
                delete_image('setting_images',$setting->image);
                $value['image'] = upload_image_without_resize('setting_images',$value['image']);
            }
            $setting->update($value);
        }

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Setting $setting)
    {
        if($setting->image != null){
            delete_image('setting_images',$setting->image);
        }

        foreach (config('translatable.locales') as $locale){
            $setting->image = NULL;
            $setting->translate($locale)->value = NULL;
            $setting->translate($locale)->title = NULL;
            $setting->translate($locale)->description = NULL;
            $setting->translate($locale)->link = NULL;
        }
        $setting->save();
        
        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }
}
