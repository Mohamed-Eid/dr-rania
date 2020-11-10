<?php

namespace App\Http\Controllers\Dashboard;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\SubCategory;
use Illuminate\Validation\Rule;

class OverviewSubcategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    { 
        $sub_categories = SubCategory::when($request->search , function ($q) use ($request){
            return $q->whereTranslationLike('name','%'.$request->search.'%');
        })->latest()->paginate(10);

        return view('dashboard.overview_sub_categories.index' , compact('sub_categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::where('parent_id',NULL)->get();
        return view('dashboard.overview_sub_categories.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //dd(request()->all());
        
        $rules = [
            'category_id' => 'required',
        ];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('sub_category_translations','name')]];
            $rules += [$locale.'.description' => ['required']];
        }

        $request->validate($rules);
        
        $data = $request->all();


        SubCategory::create($data);


        session()->flash('success', __('site.added_successfully'));

        return redirect()->route('dashboard.overview_sub_categories.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category ,Request $request)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(SubCategory $overview_sub_category)
    {
        return view('dashboard.overview_sub_categories.edit', compact('overview_sub_category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, SubCategory $overview_sub_category)
    {
        //dd($category);
        $rules = [];

        foreach (config('translatable.locales') as $locale){
            $rules += [$locale.'.name' => ['required' ,Rule::unique('sub_category_translations','name')->ignore($overview_sub_category->id,'sub_category_id')]];
        }

        $request->validate($rules);    
            
        
        $overview_sub_category->update($request->all());


        session()->flash('success', __('site.updated_successfully'));

        return redirect()->route('dashboard.overview_sub_categories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(SubCategory $overview_sub_category)
    {

        $overview_sub_category->delete();

        session()->flash('success', __('site.deleted_successfully'));

        return redirect()->route('dashboard.overview_sub_categories.index');
    }
}
