  <!-- START FOOTER -->
  <footer>

      <div class="container-fluid">
          <div class="row">
              <div class="footer-item logo col-sm-6 col-lg-3">
                  <a> <span>Dr.</span>Rania </a>
              </div>

              <div class="footer-item subscribe col-sm-6 col-lg-3 ">
                  <h5> Subscribe </h5>
                  <form method="POST" action="{{ route('frontend.pages.subscribe') }}">
                    @csrf
                  <div class="box">
                      <input class="subscribe-txt" name="email" type="text" placeholder="Email Address">
                      <button class="subscribe-btn" type="submit"> <i class="fas fa-arrow-circle-right"></i> </button>
                  </div>
                  </form>
              </div>

              <div class="footer-item mail col-sm-6 col-lg-3 ">
                  <h5> Reach Dr.Rania </h5>
                  <div class="info">
                      <i class="far fa-envelope"></i>
                      <div> info@dr-rania.com </div>
                  </div>
              </div>

              <div class="footer-item social col-sm-6 col-lg-3 ">
                  <h5> Follow Dr.Rania </h5>
                  <div class="accounts">
                      <a> <i class="fab fa-facebook-square"></i> </a>
                      <a> <i class="fab fa-linkedin"></i> </a>
                      <a> <i class="fab fa-twitter-square"></i> </a>
                  </div>
              </div>
          </div>
      </div>

      <div class="copy-right">
          <div class="container">
              <div class="row">
                  <div>
                      <h5> Powered By <span>MediaServ</span> </h5>
                  </div>

                  <div class="ml-auto">
                      <h5> &copy; 2020 <span>DR.</span> Rania </h5>
                  </div>
              </div>
          </div>
      </div>

  </footer>
  <!-- END FOOTER -->

  <!-- START SCRIPTS -->
  <!-- JQUERY -->
  <script src="{{ asset('frontend/js/jquery-3.5.1-min.js') }}"></script>
  <!-- POPPER JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
      integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
  </script>
  <!-- BOOTSTRAB -->
  <script src="{{ asset('frontend/js/bootstrap.min.js') }}"></script>
  <!-- NICE SCROLL -->
  <script src="{{ asset('frontend/js/jquery.nicescroll.min.js') }}"></script>
  <!-- WOW JS -->
  <script src="{{ asset('frontend/js/wow.min.js') }}"></script>
  <!-- OWL CAROUSEL -->
  <script src="{{ asset('frontend/js/owl.carousel.min.js') }}"></script>
  <!-- BX SLIDER -->
  <script src="{{ asset('frontend/js/jquery.bxslider.min.js') }}"></script>
  <!-- CUSTOM JS -->
  <script src="{{ asset('frontend/js/main.js') }}"></script>
  <!-- SWEET ALERT JS -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    @if (session('success'))
        <script>
            swal("{{session('success')}}","", "success");
        </script>
    @elseif(session('error'))

        <script>
            swal("{{ session('error') }}","", "error");
        </script>            
    @endif

  @stack('scripts')

  </body>

  </html>
