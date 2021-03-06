@extends('layouts.frontend.app')

@section('content')

<!-- START CONTACT PAGE -->
<div class="contact">
    <div class="container">
      <div class="row justify-content-center">
      
        <div class="links col-12">
          <div class="row text-center">
  
            <div class="contact-item subscribe col-sm-12 col-lg-4 ">
              <h5> Subscribe </h5>
              <div class="box"> 
                <form method="POST" action="{{ route('frontend.pages.subscribe') }}">
                  @csrf
                <input class="subscribe-txt" type="text" name="email" placeholder="Email Address">
                <button class="subscribe-btn" type="submit"> <i class="fas fa-arrow-circle-right"></i> </button>
                </form>
              </div>
            </div>
  
            <div class="contact-item mail col-sm-12 col-lg-4 ">
              <h5> Reach Dr.Rania </h5>
              <div class="info">
                <i class="far fa-envelope"></i>
                <div> {{get_setting_by_key('dr_email')->value}} </div>
              </div>
            </div>
  
            <div class="contact-item social col-sm-12 col-lg-4 ">
              <h5> Follow Dr.Rania </h5>
              <div class="accounts">
                <a href="{{get_setting_by_key('dr_facebook_url')->value}}"> <i class="fab fa-facebook-square"></i> </a>
                <a href="{{get_setting_by_key('dr_linkedin_url')->value}}"> <i class="fab fa-linkedin"></i> </a>
                <a href="{{get_setting_by_key('dr_twitter_url')->value}}"> <i class="fab fa-twitter-square"></i> </a>
              </div>
            </div>
  
          </div>
        </div>
  
        <div class="contact-form col-7">
  
          <form method="POST" action="{{ route('frontend.pages.contact_us.store') }}">
            @csrf
            <div class="form-group">
              <input type="text" class="form-control" name="name" placeholder="Name" aria-describedby="emailHelp">
            </div>
  
            <div class="form-group">
              <input type="email" class="form-control" name="email" placeholder="Email" aria-describedby="emailHelp">
            </div>
  
            <div class="form-group">
              <input type="text" class="form-control" name="phone" placeholder="phone" aria-describedby="emailHelp">
            </div>

            <input type="text" class="form-control" name="type" value="general" hidden>

            <div class="form-group">
              <textarea class="form-control" name="body" placeholder="Message" rows="5"></textarea>
            </div>
  
            <button type="submit" class="btn btn-primary">Send</button>
          </form>
  
        </div>
      </div>
    </div>
  </div>
  <!-- END CONTACT PAGE -->
  

@endsection
