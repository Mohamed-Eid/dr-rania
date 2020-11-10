<form action="{{ route('dashboard.setting.update_about') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 
    <div class="row">                                    
    
    @foreach ($items as $item)
    <div class="col-md-4">

    @if ($item->key=='description' || $item->key=='keywords')
    @foreach(config('translatable.locales') as $locale)                             
    <div class="form-group">
        <label>@lang('site.'.$locale.'.'.$item->key)</label>
        <textarea type="text" name="{{$item->id}}[{{$locale}}][description]" class="form-control" rows="4" cols="50" >{{$item->translate($locale)->description}}</textarea>                                        
        </div>
    @endforeach
    @elseif($item->type=='text')
    <div class="form-group">
        <label>{{ $item->name }}</label>
        <input type="text" name="{{$item->id}}[one_value]" class="form-control" value="{{$item->one_value}}" >
    </div>
    @endif
    </div>

    @endforeach
</div>
    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>
</form>  
{{-- @include('dashboard.settings.delete_button')                                                    --}}
                                    
