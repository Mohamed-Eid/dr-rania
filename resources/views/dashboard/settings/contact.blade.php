<div class="row">                                    
    <form action="{{ route('dashboard.setting.update_contact') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('put') 
        @foreach ($items as $item)
        <div class="col-md-6">

            @if ($item->key=='map')
            <div class="form-group">
                <label>{{ $item->name }}</label>
                <textarea type="text" name="{{$item->id}}[one_value]" class="form-control" rows="4">
                    {{$item->one_value}}
                </textarea>
            </div>
            @else
            <div class="form-group">
                <label>{{ $item->name }}</label>
                <input type="text" name="{{$item->id}}[one_value]" class="form-control" value="{{$item->one_value}}" >
            </div>
            @endif


 
        </div>
        @endforeach
        <div class="form-group">
            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
            </button>
        </div>
    </form>  
                {{-- @include('dashboard.settings.delete_button')                                                    --}}
                                                  
</div>