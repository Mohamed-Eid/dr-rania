<form action="{{ route('dashboard.setting.update_about') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 

    <div class="row">
        <div class="col-md-12">
            <div class="box box-solid">
            <!-- /.box-header -->
            <div class="box-body">
                <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                    @foreach ($items as $index=>$item)
                    <div class="panel box box-primary">
                        <div class="box-header with-border">
                        <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse-{{$item->id}}">
                                {{ $item->name }}
                            </a>
                        </h4>
                        </div>
                        <div id="collapse-{{$item->id}}" class="panel-collapse collapse {{$index==0 ? 'in' : ''}}">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>{{ $item->name }}</label>
                                        <input type="file" name="{{$item->id}}[image]" class="form-control" id="image-{{$item->id}}">
                                        
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

                                </div>

                                <div class="col-md-6">
                                    @foreach(config('translatable.locales') as $locale)                             
                                    <div class="form-group">
                                        <label>@lang('site.'.$locale.'.text') </label>
                                        <textarea type="text" name="{{$item->id}}[{{$locale}}][value]" class="form-control" >{{$item->translate($locale)->value}}</textarea>
                                    </div>
                                    @endforeach
                
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    @endforeach

    
                </div>
            </div>
            <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        
        <!-- /.col -->
    </div>
    <!-- /.row -->
    <!-- END ACCORDION & CAROUSEL-->

    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>

</form>    