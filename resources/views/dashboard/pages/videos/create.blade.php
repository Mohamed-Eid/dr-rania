<form action="{{ route('dashboard.store_videos') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <label>@lang('site.title')</label>
        <input type="text" name="title" class="form-control" value="{{ old('title') }}"
               required>
    </div>

    <div class="form-group">
        <label>@lang('site.body')</label>
        <textarea  name="body" class="form-control" required>{{ old('body') }}</textarea>
    </div>


    <div class="form-group">
        <label>@lang('site.link')</label>
        <input type="text" name="link" class="form-control" value="{{ old('link') }}"
               required>
    </div>


    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
        </button>
    </div>

</form>