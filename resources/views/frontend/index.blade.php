@extends('layouts.frontend.app')

@section('content')

<!-- START PROFILE SECTION -->
<div id="prof" class="profile">
    <div class="container">
        <div class="row">
            <div class="profile-info col-sm-12 col-lg-8">
                <h1>
                    <span> {{get_setting_by_key('dr_name')->value}} </span>{!!  nl2br (get_setting_by_key('dr_bio')->value) !!}
                  </h1>
                <h4> Profile: </h4>
                <div class="txt">
                    {!! get_snippts(get_setting_by_key('dr_text')->value , 60) !!} ....
                </div>
                <a class="btn btn-primary mr-auto float-r" href="{{ route('frontend.pages.basic_info') }}"> Read More </a>
            </div>
            <div class="profile-img col-sm-12 col-lg-4">
                <img class="img-fluid" src="{{get_setting_by_key('dr_image')->image_path}}">
            </div>
        </div>
    </div> 
</div>
<!-- END PROFILE SECTION -->

<!-- START AWARDS SECTION -->
@include('frontend.home.awards')
<!-- END AWARDS SECTION -->

<!-- START PUPLICATION SECTION -->
@include('frontend.home.publications')
<!-- END PUPLICATION SECTION -->

<!-- START CASE AUTHOR SECTION -->
@include('frontend.home.case_author')
<!-- END CASE AUTHOR SECTION -->

<!-- START TEACHING SECTION -->
@include('frontend.home.teaching')
<!-- END TEACHING SECTION -->

<!-- START CONGRESS SECTION -->
@include('frontend.home.congress')
<!-- END CONGRESS SECTION -->

<!-- START INTERNATIONAL ESTEEM SECTION -->
@include('frontend.home.esteems') 
<!-- END INTERNATIONAL ESTEEM SECTION -->

@endsection