@extends('layouts.frontend.app')

@section('content')

<!-- START TRAINING WORKSHOP PAGE -->

<div class="training-workshop">
    <div class="container">
      <h2> Training WorkShop </h2>
      <div class="row justify-content-center">
        
        @foreach ($workshops as $workshop)
        <div class="training-workshop-item col-lg-4">
          <div class="training-workshop-img">
            <img src="{{$workshop->image_path}}" style="max-height: 233px; min-height:233px; max-width:350px; min-width:350px;" alt="A Training WorkShop Image" class="img-fluid">
            <span class="country"> {{$workshop->country}} </span>
            <span class="training-workshop-date"> {{$workshop->year}}  </span>
          </div>
          <div class="training-workshop-info">
            <div class="title"> <span> Title: </span> {{$workshop->title}}  </div>
            <div class="training-workshop-txt">  
                {{$workshop->body}}             
            </div>
            <a href="{{ route('frontend.esteems.index') }}?workshop_id={{ $workshop->id }}" class="btn btn-primary"> Feedback </a>
          </div>
        </div>            
        @endforeach


        <!-- START PAGINATION -->
        <nav class="workshop-pagination col-12 d-flex justify-content-center" aria-label="Page navigation training-workshop-pagination col-md-12">
          <ul class="pagination">
            {{ $workshops->links() }}
          </ul>
        </nav>
        <!-- END PAGINATION -->
  
      </div>
    </div>
  </div>
  
  <!-- END TRAINING WORKSHOP PAGE -->

@endsection