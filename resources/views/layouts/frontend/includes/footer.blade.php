    <footer class="dark-bg sec-padding">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-md-5 ">
                    <ul class="links p-0 f-s-15">
                        <li>
                            <a href="#">@lang('site.home')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.about_us')</a>
                        </li>
                        <li>
                            <a href="inventory.php">@lang('site.inventory')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.partners_testmonials')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.careers')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.culture')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.news')</a>
                        </li>
                        <li>
                            <a href="#">@lang('site.delar_locator')</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-4 ">
                    <h4 class="m-b-20 text-white">@lang('site.contact_us')</h4>
                    <li class="m-t-10">
                        <a href="mailto:info@example.com">
                            <i class="far fa-envelope  m-r-5"></i>
                            {{ get_setting_by_key('email')->one_value }}
                        </a>
                    </li>
                    <li class="text-white m-t-10">
                        <i class="fas fa-map-marker-alt  m-r-5"></i>
                        {{ get_setting_by_key('address')->one_value }}
                    </li>
                    <li class="m-t-10">
                        <a href="tel:010010001000">
                            <i class=" fa fa-phone-square  m-r-5"></i>
                            {{ get_setting_by_key('contact_info')->one_value }}
                        </a>
                    </li>
                </div>

                <div class="col-md-3 col-12">
                    <h4 class="m-b-20 text-white">@lang('site.follow_us_on')</h4>
                    <ul class="social-icons">
                        <li>
                            <a href=" {{ get_setting_by_key('facebook')->one_value }}" target="_blank">
                                <i class="fab fa-facebook" id="facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a href=" {{ get_setting_by_key('linked_in')->one_value }}" target="_blank">
                                <i class="fab fa-linkedin" id="linkedin"></i>
                            </a>
                        </li>
                        <li>
                            <a href="{{ get_setting_by_key('twitter')->one_value }}" target="_blank">
                                <i class="fab fa-twitter" id="twitter"></i>
                            </a>
                        </li>
                    </ul>
                    @include('frontend.includes.subscribe')

                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-6">
                    <div class="copyright  text-white  ">
                        <p>Powered by <a href="">Mediaserve </a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="copyright  text-white text-right">
                        {{-- <p>All rights reserved for <a href=""> Capital desiel </a>
                            &copy; 2019</p> --}}
                        {{ get_setting_by_key('copy_rights')->value }}
                    </div>
                </div>
            </div>
        </div>
    </footer>


    <!-- scripts -->
    <!-- jquery file -->
    <script src="{{ asset('frontend/Technomasr/js/jquery.js') }}"></script>
    <script src="{{ asset('frontend/Technomasr/js/script.js') }}"></script>

    <!-- bootstrap js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="{{ asset('frontend/Technomasr/bootstrap4/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('frontend/Technomasr/css/fonts/fontawesome/js/all.js') }}"></script>

    <!-- include Owl Carousel plugin js-->
    <script src="{{ asset('frontend/Technomasr/owl-carousel/owl.carousel.min.js') }}"></script>

    <script src="{{ asset('frontend/Technomasr/js/wow.js') }}"></script>
    <script>
        wow = new WOW({
            boxClass: 'wow', // default
            animateClass: 'animated', // default
            offset: 0, // default
            mobile: true, // default
            live: true // default
        })
        wow.init();

    </script>

    @stack('scripts')

    <!-- end scripts -->

    </body>

    </html>
