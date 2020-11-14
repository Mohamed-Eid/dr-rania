<div class="case-author">
    <div class="container">
        <h2> Case Author </h2>
        <div id="case-author-slider" class="owl-carousel owl-theme">

            @for($i = 0; $i < 4; $i++)
                <div class="case-content">
                    <div class="row">
                        <div class="case-info col-lg-8">
                            <h4> Title {{ $i+1 }} </h4>
                            <h6> 11 oct, 2020 </h6>
                            <div class="case-txt">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt
                                mollit anim id est laborum.
                            </div>
                        </div>
                        <div class="Case-img col-lg-4">
                            <img class="img-fluid" src="{{ asset('frontend/images/pub.jpg') }}">
                        </div>
                    </div>
                </div>
            @endfor

        </div>
    </div>
</div>