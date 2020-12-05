<div id="teach" class="teaching">
    <div class="container">
        <h2> Teaching </h2>
        <div id="teaching-slider" class="owl-carousel owl-theme">

            @foreach ($teaching as $key => $teachs)
                @if ($key == "workshops")
                @foreach ($teachs as $teach)
                <div class="teaching-content">
                    <div class="row">
    
                        <div class="teaching-img col-lg-4">
                            <img class="img-fluid" src="{{ $teach->image_path }}" style="max-height: 233px; min-height: 233px;" >
                        </div>
                        <div class="teaching-info col-lg-8">
                            <h4> {{$teach->title}} </h4>
                            <div class="teaching-txt">
                                {{$teach->body}}
                            </div>
                            <a class="btn btn-primary float-r" href="{{ route('frontend.teaching.workshops.index') }}"> View More </a>
                        </div>
                    </div>
                </div>                     
                @endforeach


                @else 
                @foreach ($teachs as $teach)
                <div class="teaching-content">
                    <div class="row">
                        <iframe style="margin-left:20px; min-height:233px;" src="https://www.youtube.com/embed/{{$teach->video_id}}" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="teaching-info col-lg-8">
                            <h4> {{$teach->title}} </h4>
                            <div class="teaching-txt">
                                {{$teach->body}} 
                            </div>
                            <a class="btn btn-primary float-r" href="{{ route('frontend.teaching.lectures.index') }}"> View More </a>
                        </div>
                    </div>
                </div>                    
                @endforeach

                @endif
            @endforeach


        </div>

    </div>
</div>