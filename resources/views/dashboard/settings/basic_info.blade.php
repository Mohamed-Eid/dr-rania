<form action="{{ route('dashboard.setting.update_edit') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 
    <div class="row">                                    
    
    @foreach ($items as $item)
    @if ($item->type == 'string')
    <div class="col-md-12">
        <div class="form-group">
            <label>{{ $item->field_name }}</label>
            <input type="text" name="{{$item->id}}[value]" class="form-control" value="{{$item->value}}" >
        </div>
    </div>
    @elseif($item->type == 'text')
    <div class="col-md-12">
        <div class="form-group">
            <label>{{ $item->field_name }}</label>
            <textarea  name="{{$item->id}}[value]" class="form-control" required>{{ $item->value }}</textarea>
        </div>
    </div>
    @elseif($item->type == 'image')
    <div class="form-group">
        <label>@lang('site.image')</label>
        <input type="file" name="{{$item->id}}[image]" class="form-control image">
    </div>

    <div class="form-group">
        <img src="{{ $item->image_path ?? '' }}"
             class="img-thumbnail image-preview" style="width: 100px;">
    </div>
    @endif


    @endforeach
</div>
    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>
</form>  