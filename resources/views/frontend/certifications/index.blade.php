@extends('layouts.frontend.app')

@section('content')
<!-- START CERTIFICATIONS SECTION -->
<div class="certification">
    <div class="container">
      <h2> Certifications </h2>
  
      <div class="row">
        
        @foreach ($certifications as $certification)
        <div class="certification-box col-sm-12 col-md-6 col-lg-4 ">
          <div class="card" >
            <img src="{{$certification->image_path}}" class="card-img-top" alt="Certification Image">
            <div class="card-body">
              <h5 class="card-text"> {{$certification->title}} </h5>
              <div class="card-text">
                <span> Major: </span> {{$certification->major}} <br>
                <span> Year: </span> {{$certification->year}} <br>
                <span> Grade: </span> {{$certification->grade}}
              </div>
            </div>
          </div>
        </div>            
        @endforeach

        @if($total > $paginator)

        <div class="more-certifications text-center col-12 ">
          <a href="{{ route('frontend.certifications.index',['page'=>(request()->page ? request()->page + 1 : 2)]) }}" class="btn btn-primary" >  View More Certifications <i class="fas fa-chevron-circle-down"></i>  </a>
        </div>
        @endif

      </div> 
  
    </div>
  </div>
  <!-- END CERTIFICATIONS SECTION -->

@endsection