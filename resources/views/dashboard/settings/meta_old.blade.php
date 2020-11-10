<div class="row">                                    
    @foreach ($items as $item)
            <div class="col-md-4">
                <form action="{{ route('dashboard.settings.update',$item) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('put') 
                    

                    @if ($item->key=='description' || $item->key=='keywords')
                    @foreach(config('translatable.locales') as $locale)                             
                    <div class="form-group">
                        <label>@lang('site.'.$locale.'.'.$item->key)</label>
                        <textarea type="text" name="{{$locale}}[description]" class="form-control" rows="4" cols="50" > 
                            {{$item->translate($locale)->description}}
                        </textarea>                                        </div>
                    @endforeach
                    @elseif($item->type=='image')
                    <div class="form-group">
                        <label>{{ $item->name }}</label>
                        <input type="file" name="image" class="form-control" id="image-{{$item->id}}">
                        
                        <div class="form-group">
                            <img src="{{ $item->image ? $item->image_path : '' }}"
                                class="img-thumbnail" id="image-preview-{{$item->id}}" style="width: 100px;">
                        </div>
                        @push('scripts')
                        <script>
                            $("#image-{{$item->id}}").change(function() {
                                if (this.files && this.files[0]) {
                                    var reader = new FileReader();
                    
                                    reader.onload = function(e) {
                                        $('#image-preview-{{$item->id}}').attr('src', e.target.result);
                                    }
                                    reader.readAsDataURL(this.files[0]); // convert to base64 string
                                }
                            });
                        </script>
                    @endpush
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