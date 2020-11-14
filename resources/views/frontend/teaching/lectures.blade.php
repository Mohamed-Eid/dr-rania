@extends('layouts.frontend.app')

@section('content')

<!-- START VIDEO LECTURES PAGE -->

<div class="video-lecture">
    <div class="container">
        <h2> Video Lectures </h2>
        <div class="row justify-content-center">

            @foreach($lectures as $lecture)
                <div class="video-lecture-item col-lg-4">
                    <iframe height="250" src="https://www.youtube.com/embed/{{ $lecture->video_id }}" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <div class="video-lecture-info">
                        <div class="title"> <span> Title: </span> {{ $lecture->title }} </div>
                        <div class="video-lecture-txt">
                            {{ $lecture->body }}
                        </div>

                        <!-- BUTTON TRIGGER MODAL -->
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#videoLec-1">
                            View Lecture
                        </button>

                        <!-- MODAL -->
                        <div class="modal fade" id="videoLec-1" tabindex="-1" aria-labelledby="vedioLecLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-xl">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title" id="videoLecLabel">{{ $lecture->title }}</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <iframe height="250"
                                            src="https://www.youtube.com/embed/{{ $lecture->video_id }}"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            @endforeach

            <!-- START PAGINATION -->

            <nav class="video-lec-pagination col-12 d-flex justify-content-center" aria-label="Page navigation video-pagination col-md-12">
                <ul class="pagination">
                    {{ $lectures->links() }}
                </ul>
            </nav>

            <!-- END PAGINATION -->

        </div>
    </div>
</div>

<!-- END VIDEO LECTURES PAGE -->

@endsection
