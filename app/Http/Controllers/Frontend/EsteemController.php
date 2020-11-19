<?php

namespace App\Http\Controllers\Frontend;

use App\Esteem;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EsteemController extends Controller
{
    public function index(Request $request){
        
        //$esteems = Esteem::all();
        
        $esteems = Esteem::when($request->congress_id, function ($q) use ($request) {
            return $q->where('esteemable_id', $request->congress_id)->where('esteemable_type','App\Event');
        })
        ->when($request->workshop_id, function ($q) use ($request) {
            return $q->where('esteemable_id', $request->workshop_id)->where('esteemable_type','App\Workshop');
        })
        ->latest()->paginate(10);

        return view('frontend.esteems.index',compact('esteems'));
    }
}
