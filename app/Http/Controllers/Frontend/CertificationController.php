<?php

namespace App\Http\Controllers\Frontend;

use App\Certification;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CertificationController extends Controller
{
    public function index(Request $request){
        $total = count(Certification::all());
        $paginator = 9;
        if($request->has('page')){
            //dd($request->page);
            $paginator = $paginator * $request->page;
            $certifications = Certification::take($paginator)->get();

            return view('frontend.certifications.index',compact('certifications','paginator','total'));
        }
        $certifications = Certification::take($paginator)->get();

        return view('frontend.certifications.index',compact('certifications','paginator','total'));
    }
}
