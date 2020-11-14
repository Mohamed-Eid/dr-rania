@extends('layouts.frontend.app')

@section('content')

<!-- START SUPERVISI THESIS PAGE -->
<div class="supervise">
    <div class="container">
        <h2> Supervise Thesis </h2>
        <div class="row justify-content-center">

            @foreach($theses as $thesis)
                <div class="supervise-item col-lg-6">
                    <div class="row">
                        <div class="supervise-img col-lg-4">
                            <img class="img-fluid" src="{{ $thesis->image_path }}" style="max-height: 160px; min-height:160px" alt="Supervise Image">
                        </div>
                        <div class="supervise-info col-lg-8">
                            <h4> {{ $thesis->title }} </h4>
                            <span> Degree: </span> {{ $thesis->degree }} <br>
                            <span> Stuednt Name: </span> {{ $thesis->student_name }} <br>
                            <span> Supervisors: </span> {{ $thesis->supervisors }} <br>
                            <span> Discussion Year: </span> {{ $thesis->discussion_year }} <br>
                            <a href="#" class="abstract btn btn-primary"> Thesis Abstract </a>
                        </div>
                    </div>
                </div>
            @endforeach

            @if($total > $paginator)
                <div class="more-supervise-thesis-items">
                    <a href="{{ route('frontend.thesis.index',['page'=>(request()->page ? request()->page + 1 : 2)]) }}"
                        class="btn btn-primary"> View More Supervise Thesis </a>
                </div>
            @endif


        </div>
    </div>
</div>
<!-- END SUPERVISI THESIS PAGE -->


@endsection
