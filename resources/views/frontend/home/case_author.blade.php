<div class="case-author">
    <div class="container">
        <h2> Case Author </h2>
        <div id="case-author-slider" class="owl-carousel owl-theme">

            @foreach (get_objects_by_class('case_author') as $index => $item)
                <div class="case-content">
                    <div class="row">
                        <div class="case-info col-lg-8">
                            <h4> {{$item->value['title']}} </h4>
                            <h6>{{ \Carbon\Carbon::createFromFormat('Y-m-d', $item->value['date'])->format('j F, Y')}}</h6>
                            <div class="case-txt">
                                {{$item->value['details']}}
                            </div>
                        </div>
                        <div class="Case-img col-lg-4">
                            <img class="img-fluid" src="{{ image_path('object_images',$item->value['image'])}}">
                        </div>
                    </div>
                </div>
            @endforeach

        </div>
    </div>
</div>