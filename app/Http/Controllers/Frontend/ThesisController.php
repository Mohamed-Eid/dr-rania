<?php

namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Thesis;

class ThesisController extends Controller
{
    public function index(Request $request){
        $total = count(Thesis::all());
        $paginator = 9;
        if($request->has('page')){
            //dd($request->page);
            $paginator = $paginator * $request->page;
            $theses = Thesis::take($paginator)->get();

            return view('frontend.thesis.index',compact('theses','paginator','total'));
        }
        $theses = Thesis::take($paginator)->get();

        return view('frontend.thesis.index',compact('theses','paginator','total'));
    }


}
