<div id="cong" class="congress sec">
    <div class="container">
        <h2> Congress </h2>
        <div id="congress-slider" class="owl-carousel owl-theme">
                @foreach ($congress as $event)
                <div class="congress-content">
                    <div class="row">
                        <div class="congress-info col-sm-12 col-lg-6">
                            <div class="congress-txt">
                                <h4 class="congress-title"> {{$event->congress_title}} </h4>
                                <h5 class="congress-role"> <span> Dr.Rani Role: {{$event->role}} </span> </h5>
                                <h4 class="event-title"> {{$event->event_title}} </h4>
                                <h5 class="congress-details"> <span> {{ \Carbon\Carbon::createFromFormat('Y-m-d', $event->date)->format('j F, Y')}}</span> | <span> {{$event->location}} </span>
                                </h5>
                            </div>
                            <a class="btn btn-primary float-r" href="international-esteem.php"> Feedback </a>
                        </div>
                        <div class="congress-img col-sm-12 col-lg-6">
                            <img class="img-fluid"
                                src="{{$event->image_path}}" style="max-height: 302px; min-height: 302px; ">
                        </div>
                    </div>
                </div>                    
                @endforeach

        </div>

        <div class="text-center more-congress">
            <a class="btn btn-primary" href="congress.php"> View More Congress </a>
        </div>


    </div>
</div>