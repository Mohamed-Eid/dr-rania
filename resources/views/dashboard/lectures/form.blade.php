<div class="form-group">
    <label>@lang('site.title')</label>
    <input type="text" name="title" class="form-control" value="{{ $lecture->title ?? old('title') }}"
           required>
</div>


<div class="form-group">
    <label>@lang('site.body')</label>
    <textarea  name="body" class="form-control" required>{{ $lecture->body ?? old('body') }}</textarea>
</div>


<div class="form-group">
    <label>@lang('site.youtube_link')</label>
    <input type="text" name="video" class="form-control" value="{{ $lecture->video ?? old('video') }}"
           required>
</div>

<div class="form-group">
    <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
    </button>
</div>