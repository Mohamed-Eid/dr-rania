<?php

namespace App\Http\Controllers\Dashboard;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Setting;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class SettingController extends Controller
{

    public function all()
    {

        $settings_classes = DB::table('settings')
            ->select(DB::raw('count(*) as setting_count, class'))
            ->where('class','!=','center_of_excellence')
            ->where('class','!=','center_of_cairo')
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

        return view('dashboard.settings.all_settings',compact('data'));
    }
 
    public function delete_setting_image(Setting $setting)
    {
        delete_image('setting_images',$setting->image);
        $setting->image = null;
        $setting->save();
        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }

    public function update_edit()
    {
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

    public function destroy(Setting $setting)
    {
        if($setting->image != null){
            delete_image('setting_images',$setting->image);
        }

        foreach (config('translatable.locales') as $locale){
            $setting->image = NULL;
            $setting->value = NULL;
        }

        $setting->save();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->back();
    }
    
}
