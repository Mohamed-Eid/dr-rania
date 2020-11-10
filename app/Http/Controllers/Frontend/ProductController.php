<?php

namespace App\Http\Controllers\Frontend;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;

class ProductController extends Controller
{
    public function index(Request $request){
        $categories = Category::where('parent_id','!=',NULL)->get();

        $products = Product::all();

        //dd($request->category_ids);

        $products = Product::when($request->category_ids, function ($q) use ($request){
            return $q->whereIn('category_id', $request->category_ids);
        })->latest()->get();

        return view('frontend.products.index',compact('products','categories'));
    }

    public function show(Product $product){

        $related_products = Product::where('category_id',$product->category_id)
                                    ->where('id','!=',$product->id)
                                    ->get();
        return view('frontend.products.show',compact('product','related_products'));   
    }
}
