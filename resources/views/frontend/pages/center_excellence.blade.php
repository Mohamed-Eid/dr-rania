@extends('layouts.frontend.app')

@section('content')

 <!-- START PELVIC FLOOR CENTER OF EXELLENCE PAGE  -->
<div class="pelvic-excellence">

  <div id="pelvicSliderControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">

      @foreach ($sliders as $index => $slider)
      <div class="carousel-item {{ $index==0 ? 'active' : ''}}">
        <img src="{{$slider->image_path}}" class="d-block w-100" alt="...">
      </div>          
      @endforeach

    </div>
    <a class="carousel-control-prev" href="#pelvicSliderControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#pelvicSliderControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

  <div class="pelvic-excellence-page-content">
    <div class="container">
      <h2> {{ get_setting_by_key('center_of_excellence_title')->value }} </h2>

      <div class="pelvic-excellence-profile">
        <div class="row">
          <div class="pelvic-excellence-profile-info col-lg-9">
            <h4> Profile: </h4>
            <div>
              {{ get_setting_by_key('center_of_excellence_body')->value }}            
            </div> 
          </div>
          <div class="pelvic-excellence-profile-img col-lg-3">
            <img class="img-fluid" src="{{ get_setting_by_key('center_of_excellence_image')->image_path }}" alt="Pelvic Floor Center Of Excellence Logo">
          </div>
        </div>
      </div>

      <div class="our-services">
        <h2> Our Services </h2>
        <div class="services-container">
          <div class="row justify-content-center">

            <div class="col-md-10">
              <div class="row  justify-content-center">

                @foreach ($services as $service)
                <div class="card-box col-md-4">
                  <div class="card-front" style="background-image: url({{$service->image_path}});">
                    <div class="front-overlay"><h4> {{$service->title}} </h4></div>
                  </div>
                  <div class="card-back">
                    <div class="plvic-description">
                      {{$service->body}}                    
                    </div>
                    
                    <!-- BUTTON MODAL TRIGGER -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#card-modai-{{$service->id}}">
                      Read More
                    </button>

                  </div>
                </div>
                <!-- CARD BOX MODAL -->
                <div class="modal fade" id="card-modai-{{$service->id}}" tabindex="-1" aria-labelledby="CardModalLabel" aria-hidden="true">
                  <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="CardModalLabel">{{$service->title}}</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">
                        <div class="row">
                          <div class="pelvic-img-box col-lg-4">
                            <img src="{{$service->image_path}}" class="img-fluid">
                          </div> 
                          <div class="pelvic-txt-box col-lg-8 text-justify">
                            {{$service->body}}                          
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>                    
                @endforeach

              </div>
            </div>

          </div>
        </div>
      </div>

      <div class="contact-center">
        <h2> Contact Us </h2>
        <div class="row">

        <div class="center-contact-form col-lg-6">
          <ul>
            <li class="ul-header"> Contact Center </li>
            <li> <i class="far fa-envelope"></i> {{get_setting_by_key('center_email')->value}} </li>
            <li> <i class="fas fa-phone" style="transform: rotateY(180deg)"></i> {{get_setting_by_key('center_phone_1')->value}} </li>
            <li> <i class="fas fa-mobile-alt"></i> {{get_setting_by_key('center_phone_2')->value}}</li>
          </ul>

          <form method="POST" action="{{ route('frontend.pages.contact_us.store') }}">
            @csrf
            <div class="form-group">
              <input type="text" class="form-control" name="name" placeholder="Name" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
              <input type="email" class="form-control" name="email" placeholder="Email" aria-describedby="emailHelp">
            </div>

            <div class="form-group">
              <textarea class="form-control" name="body" placeholder="Message" rows="8"></textarea>
            </div>

            <input type="text" class="form-control" name="type" value="center" hidden>


            <button type="submit" class="btn btn-primary">Send</button>
          </form>

        </div>

        <div class="center-follow text-center col-lg-6">
          <h5> Follow Center </h5>
          <ul class="center-social">
            <li> <a href="{{get_setting_by_key('center_facebook_url')->value}}"> <i class="fab fa-facebook-square"></i> </a> </li>
            <li> <a href="{{get_setting_by_key('center_linkedin_url')->value}}"> <i class="fab fa-linkedin"></i> </a> </li>
            <li> <a href="{{get_setting_by_key('center_twitter_url')->value}}"> <i class="fab fa-twitter-square"></i> </a> </li>
          </ul>
          <div class="center-location">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d110532.89549083744!2d31.30329406893522!3d30.032468600716175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583c1380cba7ef%3A0xd541260e9e06978d!2sNasr%20City%2C%20Cairo%20Governorate!5e0!3m2!1sen!2seg!4v1601175174423!5m2!1sen!2seg" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </div>
        </div>

        </div>
      </div>

    </div>
  </div>

</div>
<!-- END PELVIC FLOOR CENTER OF EXELLENCE PAGE  -->
 

@endsection
