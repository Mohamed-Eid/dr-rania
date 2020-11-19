<form action="{{ route('dashboard.setting.update_edit') }}" method="post" enctype="multipart/form-data">
    
    @csrf
    @method('PUT')
    @foreach (get_settings_by_class('center_of_cairo') as $setting)
        @if ($setting->type == 'string')
        <div class="form-group">
            <label>@lang('site.title')</label>
            <input type="text" name="{{$setting->id}}[value]" class="form-control" value="{{ $setting->value }}"
                   required>
        </div>
        @elseif($setting->type == 'text')
        <div class="form-group">
            <label>@lang('site.body')</label>
            <textarea  name="{{$setting->id}}[value]" class="form-control" required>{{ $setting->value }}</textarea>
        </div>
        @elseif($setting->type == 'image')
        <div class="form-group">
            <label>@lang('site.image')</label>
            <input type="file" name="{{$setting->id}}[image]" class="form-control image">
        </div>
    
        <div class="form-group">
            <img src="{{ $setting->image_path ?? '' }}"
                 class="img-thumbnail image-preview" style="width: 100px;">
        </div>
        @endif
    @endforeach


    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-pencil"></i>@lang('site.add')
        </button>
    </div>

</form>