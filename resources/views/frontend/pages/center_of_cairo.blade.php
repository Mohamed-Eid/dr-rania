@extends('layouts.frontend.app')

@section('content')

<!-- START PELVIC CAIRO PAGE -->
<div class="pelvic-cairo">
    <div class="container">
      <h2> {{ get_setting_by_key('center_of_cairo_title')->value }} </h2>
    </div>
  
      <!-- START PELVIC CAIRO PROFILE SECTION -->
      <div class="pelvic-cairo-profile">
        <div class="container">
          <div class="row">
  
            <div class="pelvic-cairo-profile-info col-lg-9">
              <h4> Profile: </h4>
              <div class="pelvic-cairo-profile-txt text-justify">
                {{ get_setting_by_key('center_of_cairo_body')->value }}              
              </div>
            </div>
  
            <div class="pelvic-profile-img col-lg-3">
              <img src="{{ get_setting_by_key('center_of_cairo_image')->image_path }}" class="img-fluid">
            </div>
  
          </div>
        </div>
      </div>
      <!-- END PELVIC CAIRO PROFILE SECTION -->
  
      <!-- START PELVIC CAIRO AWARDS SECTION -->
      <div class="pelvic-cairo-awards">
        <div class="container">
          <h2> Awards </h2>
          <div class="row justify-content-center">

            @foreach ($awards as $award)
            <div class="pelvic-award-item col-lg-5">
                <div class="row">
    
                  <div class="pelvic-award-img col-lg-6">
                    <img src="{{$award->image_path}}" class="img-fluid">
                  </div>
                  <div class="pelvic-award-info col-lg-6">
                    <h5> <span> Title: </span> {{$award->title}} </h5>
                    <h5> <span> Year: </span> {{$award->year}}</h5>
                  </div>
    
                </div>
            </div>               
            @endforeach
            

  
          </div>
        </div>
      </div>
      <!-- END PELVIC CAIRO AWARDS SECTION -->
  
      <!-- START PELVIC CAIRO PUBLICATIONS SECTION -->
      <div class="pelvic-cairo-publications">
        <div class="container">
          <h2> Publications </h2>
  
          <div id="pelvic-cairo-publications-slider" class="owl-carousel owl-theme">
            
            @foreach ($publications as $publication)
            <div class="pelvic-cairo-publication-item">
              <div class="pelvic-cairo-publication-img">
                <img src="{{$publication->image_path}}" alt="An Publication Image" class="img-fluid" style="max-height: 240px;min-height: 240px;">
                <span class="pelvic-cairo-publisher"> {{$publication->publisher}} </span>
                <span class="pelvic-cairo-pub-year"> {{$publication->year}} </span>
              </div>
              <div class="pelvic-cairo-publication-info">
                <div class="pelvic-cairo-publication-title"> <span> Title: </span> {{$publication->title}} </div>
                <div class="pelvic-cairo-publication-author"> <span> Author Name: </span> {{$publication->author}}</div>
              </div>
            </div>                
            @endforeach

          </div>
  
        </div>
      </div>
      <!-- END PELVIC CAIRO PUBLICATIONS SECTION -->
  

      <!-- START PELVIC CAIRO WORKSHOP SECTION -->
      <div class="pelvic-cairo-workshop">
        <div class="container">
          <h2> Workshop </h2>
          <div id="pelvic-cairo-workshop-slider" class="owl-carousel owl-theme">
            
            @foreach ($workshops as $workshop)
            <div class="pelvic-cairo-workshop-content">
              <div class="row">
  
                <div class="pelvic-cairo-workshop-img col-lg-4">
                  <img class="img-fluid" src="{{$workshop->image_path}}" style="max-height: 233px;min-height: 233px;"> 
                </div>
                <div class="pelvic-cairo-workshop-info col-lg-8">
                  <h4> {{$workshop->title}} </h4>
                  <div class="pelvic-cairo-workshop-txt">
                    {{$workshop->body}}
                  </div>
                </div>
              </div>
            </div>                
            @endforeach

          </div>
        </div>
      </div>
      <!-- END PELVIC CAIRO WORKSHOP SECTION -->
  
      <!-- START PELVIC CAIRO VIDEOS SECTION -->
      <div class="pelvic-cairo-videos">
        <div class="container">
          <h2> Videos </h2>
  
          <div id="pelvic-cairo-videos-slider" class="owl-carousel owl-theme">
            
            @foreach ($videos as $video)
            <div class="pelvic-cairo-video-item">
              <iframe src="https://www.youtube.com/embed/{{$video->video_id}}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="pelvic-cairo-video-info">
                  <h5> {{$video->title}} </h5>
                  <div class="pelvic-cairo-video-txt text-justify">
                    {{$video->body}}
                  </div>  
                </div>
            </div>                
            @endforeach

  
          </div>
  
        </div>
      </div>
      <!-- END PELVIC CAIRO VIDEOS SECTION -->
  
      <!-- START PELVIC CAIRO IMAGES ALBUM SECTION -->
      <div class="pelvic-cairo-album">
        <div class="container">
          <h2> Photo Album </h2>
  
          <div id="pelvic-cairo-imgs-slider" class="owl-carousel owl-theme">
  
            @foreach ($photos as $photo)
            <div class="pelvic-cairo-img-box">
              <img src="{{$photo->image_path}}" class="img-fluid">
            </div>                
            @endforeach
  
          </div>
  
        </div>
      </div>
      <!-- END PELVIC CAIRO IMAGES ALBUM SECTION -->
    
  </div>
  <!-- END PELVIC CAIRO PAGE -->
  

@endsection
