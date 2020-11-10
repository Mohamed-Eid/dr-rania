<?php include("layouts/header.php") ?>
<!-- START CONTACT PAGE -->
<div class="contact">
  <div class="container">
    <div class="row justify-content-center">
    
      <div class="links col-12">
        <div class="row text-center">

          <div class="contact-item subscribe col-sm-12 col-lg-4 ">
            <h5> Subscribe </h5>
            <div class="box"> 
              <input class="subscribe-txt" type="text" placeholder="Email Address">
              <a class="subscribe-btn" href="#"> <i class="fas fa-arrow-circle-right"></i> </a>
            </div>
          </div>

          <div class="contact-item mail col-sm-12 col-lg-4 ">
            <h5> Reach Dr.Rania </h5>
            <div class="info">
              <i class="far fa-envelope"></i>
              <div> info@dr-rania.com </div>
            </div>
          </div>

          <div class="contact-item social col-sm-12 col-lg-4 ">
            <h5> Follow Dr.Rania </h5>
            <div class="accounts">
              <a> <i class="fab fa-facebook-square"></i> </a>
              <a> <i class="fab fa-linkedin"></i> </a>
              <a> <i class="fab fa-twitter-square"></i> </a>
            </div>
          </div>

        </div>
      </div>

      <div class="contact-form col-7">

        <form>
          <div class="form-group">
            <input type="text" class="form-control" placeholder="Name" aria-describedby="emailHelp">
          </div>

          <div class="form-group">
            <input type="email" class="form-control" placeholder="Email" aria-describedby="emailHelp">
          </div>

          <div class="form-group">
            <input type="text" class="form-control" placeholder="phone" aria-describedby="emailHelp">
          </div>

          <div class="form-group">
            <textarea class="form-control" placeholder="Message" rows="5"></textarea>
          </div>

          <button type="submit" class="btn btn-primary">Send</button>
        </form>

      </div>
    </div>
  </div>
</div>
<!-- END CONTACT PAGE -->
<?php include("layouts/footer.php") ?>