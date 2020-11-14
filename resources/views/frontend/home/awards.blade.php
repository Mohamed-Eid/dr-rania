<div class="home-awards sec">
    <div class="container">
        <h2> Awards </h2>

        <div id="home-awards" class="owl-carousel owl-theme">
            @foreach($awards as $award)
                <div class="award-box">
                    <div class="award-img">
                        <img src="{{ $award->image_path }}" class="img-fluid" style="min-height: 225px;">
                        <div class="img-title">
                            {{ $award->title }}
                        </div>
                    </div>
                    <div class="award-info">
                        <span> Year: </span> {{ $award->year }} <br>
                        <span> Country: </span> {{ $award->country }}
                    </div>
                </div>
            @endforeach
        </div>

    </div>
</div>
