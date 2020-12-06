<div id="pub" class="publications sec">
    <div class="container">
        <h2> Publications </h2>
        <div class="row">

            @foreach (get_objects_by_class('home_publications') as $index => $item)
            <div class="publication-item col-lg-4">
                <div class="publication-img">
                    <img src="{{ image_path('object_images',$item->value['image'])}}" alt="An Publication Image"
                        class="img-fluid">
                    <span class="publisher"> {{$item->value['publisher']}} </span>
                    <span class="pub-year"> {{$item->value['year']}} </span>
                </div>
                <div class="publication-info">
                    <div class="title"> <span> Title: </span> {{$item->value['title']}}</div>
                    <div class="author"> <span> Author Name: </span> {{$item->value['author_name']}} </div>
                    <a href="{{$item->value['url']}}" class="btn btn-primary float-r"> More {{ucwords($item->value['type'])}} </a>
                </div>
            </div>
            @endforeach


        </div>
    </div>
</div>