<div class="form-group">
    <label>@lang('site.title')</label>
    <input type="text" name="title" class="form-control" value="{{ $workshop->title ?? old('title') }}"
           required>
</div>

<div class="form-group">
    <label>@lang('site.title')</label>
    <textarea  name="body" class="form-control" required>{{ $workshop->body ?? old('body') }}</textarea>
</div>

<div class="form-group">
    <label>@lang('site.country')</label>
    <input type="text" name="country" class="form-control" value="{{ $workshop->country ?? old('country') }}"
           required>
</div>

<div class="form-group">
    <label>@lang('site.year')</label>
    <input type="string" name="year" class="form-control" value="{{ $workshop->year ?? old('year') }}"
           required>
</div>


<div class="form-group">
    <label>@lang('site.image')</label>
    <input type="file" name="image" class="form-control image">
</div>

<div class="form-group">
    <img src="{{  $workshop->image_path ?? asset('uploads/workshops_images/default.png') }}"
         class="img-thumbnail image-preview" style="width: 100px;">
</div>
