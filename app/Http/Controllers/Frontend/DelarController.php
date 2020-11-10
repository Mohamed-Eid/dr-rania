<?php

namespace App\Http\Controllers\Frontend;

use App\Area;
use App\City;
use App\Delar;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DelarController extends Controller
{
    public function index(Request $request){
        $cities = City::all();

        // $delars = Delar::all();
        
        $delars = Delar::when($request->city_id, function ($q) use ($request){
            return $q->where('city_id', $request->city_id);
        })->when($request->area_id, function ($q) use ($request){
            return $q->where('area_id', $request->area_id);
        })->latest()->get();
        
        $areas = [];
        if($request->area_id){
            $areas = Area::find($request->area_id)->city->areas;
        }
        //dd($delars);

        return view('frontend.delars.index',compact('delars','cities','areas'));
    }
}
