<?php

namespace App\Http\Controllers\Dashboard;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use App\ProductImage;
use Illuminate\Support\Collection;
use Illuminate\Validation\Rule;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $products = Product::when(request()->search, function ($q) {
            return $q->whereTranslationLike('name', '%' . request()->search. '%');
        })->latest()->paginate(10);
        // $products = Product::paginate(10);
        return view('dashboard.products.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */ 
    public function create()
    {
        $categories = Category::where('parent_id','!=',NULL)->get();
        return view('dashboard.products.create',compact('categories'));    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        
        $rules = [
            'category_id' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('product_translations','name')]];
            $rules += [$locale.'.description' => ['required']];
        }

        $request->validate($rules);
        
        $data = $request->except(['files']);

        $product =  Product::create($data);

        $images = Collection::wrap(request()->file('files'));

        $images->each(function($image) use ($product){
            $image_name = upload_image('product_images',$image);
            $product->product_images()->create([
                'image' => $image_name
            ]);
        });

        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.products.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $categories = Category::where('parent_id','!=',NULL)->get();

        return view('dashboard.products.edit',compact('product','categories'));
    }

    public function remove_image(ProductImage $image){
        delete_image('product_images',$image->image);
        $image->delete();
        return redirect()->back();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $rules = [
            'category_id' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('product_translations','name')->ignore($product->id, 'product_id')]];
            $rules += [$locale.'.description' => ['required']];
        }

        $request->validate($rules);
        
        $data = $request->except(['files']);

        $product->update($data);

        $images = Collection::wrap(request()->file('files'));

        $images->each(function($image) use ($product){
            $image_name = upload_image('product_images',$image);
            $product->product_images()->create([
                'image' => $image_name
            ]);
        });

        session()->flash('success', __('site.updated_successfully'));

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
