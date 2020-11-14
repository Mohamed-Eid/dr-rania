@extends('layouts.frontend.app')

@section('content')

<!-- START BOOK CHAPTER PUBLISHED INTERNATIONALLY PAGE -->

<div class="book-chapter">
    <div class="container">
        <h2>  Review Articles </h2>

        <div class="timeline">
            @foreach ($publications as $publication)
            <div class="row no-gutters justify-content-end justify-content-md-around align-items-start  timeline-nodes">
                <div class="col-10 col-md-5 order-3 order-md-1 timeline-content">
                    <h3 class=" text-light">{{$publication->title}} <br> <span>{{ \Carbon\Carbon::createFromFormat('Y-m-d', $publication->date)->format('j F, Y')}}</span> </h3>
                    <div class="timeline-txt">
                        {{$publication->body}} 
                    </div>

                    <!-- BUTTON TRIGGER MODAL -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#book-1">
                        Book Brief
                    </button>

                    <!--  MODAL -->
                    <div class="modal fade" id="book-1" tabindex="-1" aria-labelledby="BookLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title">Book 1</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <iframe
                                    src="{{ $publication->pdf_path }}" type="application/pdf"
                                    width="100%" height="450"
                                    ></iframe>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-2 col-sm-1 px-md-3 order-2 timeline-image text-md-center">
                    <img src="{{$publication->icon_path}}" style="max-height:30px; max-width:30px; min:height:30px; min-width:30px;">
                </div>
                <div class="col-10 col-md-5 order-1 order-md-3 py-3 timeline-date"></div>
            </div>                
            @endforeach


        </div>
    </div>
</div>

<!-- START BOOK CHAPTER PUBLISHED INTERNATIONALLY PAGE -->

@endsection
