<form action="{{ route('dashboard.setting.update_about') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 
    <div class="row">                                    
    
    @foreach ($items as $item)
    @if ($item->key=='default_language')

    <div class="col-md-4">
            <!-- select -->
            <div class="form-group">
                <label>@lang('site.default_language')</label>
                <select class="form-control" name="{{$item->id}}[one_value]">
                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                <option value="{{ $localeCode }}" {{ $localeCode == $item->one_value ? 'selected' : '' }}  >{{ $properties['native'] }}</option>
                @endforeach
                </select>
            </div>
    </div>
    @else
    <div class="col-md-8">

    @foreach(config('translatable.locales') as $locale)                             
    <div class="form-group">
        <label>{{ $item->name }} @lang('site.in_'.$locale)</label>
        <textarea type="text" name="{{$item->id}}[{{$locale}}][value]" class="form-control">{{$item->translate($locale)->value}}</textarea>
    </div>
    @endforeach
    </div>
    @endif

    @endforeach
    </div>
    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>

</form>                                                    

