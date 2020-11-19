@extends('layouts.frontend.app')

@section('content')

<!-- START BASIC INFO SECTION -->
<div class="basic-info">
    <div class="container">
      <div class="row">
    
  
        <div class="basic-info-box">
          <div class="row">
  
            <div class="col-lg-8">
              <h1>
                <span> {{get_setting_by_key('dr_name')->value}} </span>{!!  nl2br (get_setting_by_key('dr_bio')->value) !!}
              </h1>
              <h4> Profile: </h4>
              <div class="basic-info-txt">
                {!! get_setting_by_key('dr_text')->value !!}
              </div>
            </div>
  
            <div class="basic-info-img col-sm-12 col-lg-4">
              <img class="img-fluid" src="{{get_setting_by_key('dr_image')->image_path}} " style="max-height: 350px; max-width:350px; min-width:350px;">
            </div>
  
            <div class="col-lg-12">
            
                <ul class="share">
                  <li class="share-title"> Share: </li>
                  <li class="share-item"> <a href="{{get_setting_by_key('dr_facebook_url')->value}}"> <i class="fab fa-facebook-square"></i> </a></li>
                  <li class="share-item"> <a href="{{get_setting_by_key('dr_twitter_url')->value}}"> <i class="fab fa-twitter"></i> </a></li>
                  <li class="share-item"> <a href="{{get_setting_by_key('dr_linkedin_url')->value}}"> <i class="fab fa-linkedin"></i> </a></li>
                  <li class="share-item"> <a href="mailto:{{get_setting_by_key('dr_email')->value}}"> <i class="far fa-envelope"></i> </a></li>
                </ul>
  
            </div>
  
  
  
          </div>
  
        </div>
  
  
  
      </div>
    </div>
  </div>
  <!-- END BASIC INFO SECTION -->

@endsection
