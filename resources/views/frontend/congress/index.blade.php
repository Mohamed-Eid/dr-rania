@extends('layouts.frontend.app')

@section('content')

<!-- START CONGRESS PAGE -->
<div class="main-congress">
    <div class="container">
        <h2> Congress </h2>

        <div class="row justify-content-center">
            @foreach($congress as $event)
                <div class="card col-md-5 col-lg-3">
                    <div class="card-body">
                        <div class="row">
                            <h6 class="main-congress-title">{{ $event->congress_title }}</h6>
                            <div class="main-congress-info ml-auto">
                                <h6> {{ \Carbon\Carbon::createFromFormat('Y-m-d', $event->date)->format('j F, Y') }}<br>
                                    {{ $event->location }}</h6>
                            </div>
                            <h4 class="card-title text-center col-12">{{ $event->event_title }}</h4>
                            <div class="main-congress-role mr-auto">
                                <h6> <span> Dr.Rania Role: </span> <br> {{ $event->role }}</h6>
                            </div>
                            <a href="{{ route('frontend.esteems.index') }}?congress_id={{ $event->id }}" class="card-link ml-auto">Feedback <i
                                    class="fas fa-arrow-circle-right"></i> </a>
                        </div>
                    </div>
                </div> 
            @endforeach

        </div>
    </div>
</div>
<!-- END CONGRESS PAGE -->
@endsection
