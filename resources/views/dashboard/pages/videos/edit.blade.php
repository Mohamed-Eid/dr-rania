<form action="{{ route('dashboard.update_videos',$video) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label>@lang('site.title')</label>
        <input type="text" name="title" class="form-control" value="{{ $video->title }}"
               required>
    </div>

    <div class="form-group">
        <label>@lang('site.body')</label>
        <textarea  name="body" class="form-control" required>{{ $video->body }}</textarea>
    </div>


    <div class="form-group">
        <label>@lang('site.link')</label>
        <input type="text" name="link" class="form-control" value="{{ $video->link }}"
               required>
    </div>

    <div class="form-group">
        <iframe width="100%"  height="315" 
                src="https://www.youtube.com/embed/{{ $video->video_id}}" 
                frameborder="0" 
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                allowfullscreen>
        </iframe>
    </div>

    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-pencil"></i>@lang('site.add')
        </button>
    </div>

</form>