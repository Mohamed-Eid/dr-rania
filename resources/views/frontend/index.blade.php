@extends('layouts.frontend.app')

@section('content')

<!-- START PROFILE SECTION -->
<div id="prof" class="profile">
    <div class="container">
        <div class="row">
            <div class="profile-info col-sm-12 col-lg-8">
                <h1>
                    <span> Rania Farouk El Sayed </span>MD, PhD <br>
                    Lecturer in the Radiology Department <br>
                    Cairo University, Cairo, Egypt.
                </h1>
                <h4> Profile: </h4>
                <div class="txt">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                    culpa qui officia deserunt mollit anim id est laborum.
                </div>
                <a class="btn btn-primary mr-auto float-r" href="basic-info.php"> Read More </a>
            </div>
            <div class="profile-img col-sm-12 col-lg-4">
                <img class="img-fluid" src="{{ asset('frontend/images/profile.jpg') }}">
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