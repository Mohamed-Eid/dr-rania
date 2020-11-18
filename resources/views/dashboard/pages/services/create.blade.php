<form action="{{ route('dashboard.store_services') }}" method="post" enctype="multipart/form-data">
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
        <label>@lang('site.image')</label>
        <input type="file" name="image" class="form-control image">
    </div>

    <div class="form-group">
        <img src=""
             class="img-thumbnail image-preview" style="width: 100px;">
    </div>

    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
        </button>
    </div>

</form>