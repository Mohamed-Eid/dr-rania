<?php

/**
 * Store a newly created resource in storage.
 *
 * @param  string $path folder name in public
 * @param  $request->image
 * @return string name
 */
function upload_image($path , $image , $width=300 , $height=null)
{
    // $image must be a $request->image 
    Intervention\Image\Facades\Image::make($image)->resize($width, $height, function ($constraint) {
        $constraint->aspectRatio();
    })
        ->save(public_path('uploads/'.$path .'/'. $image->hashName()));
    return $image->hashName();
}

function upload_image_without_resize($path , $image )
{
    // $image must be a $request->image 
    Intervention\Image\Facades\Image::make($image)->save(public_path('uploads/'.$path .'/'. $image->hashName()));
    return $image->hashName();
}

function delete_image($folder , $image)
{
    Illuminate\Support\Facades\Storage::disk('public_uploads')->delete('/'.$folder.'/' . $image);
}


function upload_file($path, $request_file){
    $fileName = time().'.'.$request_file->getClientOriginalExtension();
    $request_file->move(public_path('uploads/'.$path), $fileName);
    return $fileName;
}

function get_video_id($link){
    preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $link, $match);
    return $match[1];
}

function pages(){
    return \App\Page::all();
}



function get_snippts($text , $wordCount = 30){
    $text = strip_tags($text);
    //return $text;
    return implode( 
        '', 
        array_slice( 
          preg_split(
            '/([\s,\.;\?\!]+)/', 
            $text, 
            $wordCount*2+1, 
            PREG_SPLIT_DELIM_CAPTURE
          ),
          0,
          $wordCount*2-1
        )
      );
}

 
//setings helpers
function get_settings_by_class($class){
    return \App\Setting::where('class',$class)->get();
}

// function get_settings_by_class_with($class){
//     return \App\Setting::where('class',$class);
// }

function get_setting_by_key($key){
    return \App\Setting::where('key',$key)->first();
}

function get_route($item){
    return [
        'news'        => route('frontend.blog.show',$item),
        'partners'    => route('frontend.partners.index'),
        'testmonials' => route('frontend.partners.index'),
        'poducts'     => route('frontend.products.show',$item),
        'categories'  => route('frontend.categories.index'),
        'sectors'     => route('frontend.sectors.index'),
        'jobs'        => route('frontend.careers.index'),
        'cultures'    => route('frontend.cultures.index'),
        'delars'      => route('frontend.delars.index'),
    ];
}

?>