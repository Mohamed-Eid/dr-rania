<div class="row">                                    
    @foreach ($items as $item)
            <div class="col-md-6">
                <form action="{{ route('dashboard.settings.update',$item) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('put') 
                    

                    @if ($item->key=='map')
                    <div class="form-group">
                        <label>{{ $item->name }}</label>
                        <textarea type="text" name="ar[value]" class="form-control" rows="4">
                            {{$item->translate('ar')->value}}
                        </textarea>
                    </div>
                    @else
                    <div class="form-group">
                        <label>{{ $item->name }}</label>
                        <input type="text" name="ar[value]" class="form-control" value="{{$item->translate('ar')->value}}" >
                    </div>
                    @endif


                    <div class="form-group">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                        </button>
                    </div>
                </form>  
                @include('dashboard.settings.delete_button')                                                   
                                                  
            </div>
    @endforeach
</div>