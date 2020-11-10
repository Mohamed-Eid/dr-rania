<div class="row">                                    

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

                    @php
                    $header_image = get_setting_by_key('about_header_image');
                    $header_text = get_setting_by_key('about_header_text');
                    
                    $our_vision = get_setting_by_key('about_our_vision');

                    $our_mission = get_setting_by_key('about_our_mission');
                    
                    $certifications = get_setting_by_key('about_certifications');
                    $certifications_image_1 = get_setting_by_key('about_certifications_image');
                    $certifications_image_2 = get_setting_by_key('about_certifications_image_2');


                    @endphp
                    
                    <div class="panel box box-primary">
                        <div class="box-header with-border">
                        <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                @lang('site.header')
                            </a>
                        </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="form-group">
                                        <label>{{ $header_image->name }}</label>
                                        <input type="file" name="{{$header_image->id}}[image]" class="form-control" id="image-{{$header_image->id}}">
                                        
                                        <div class="form-group">
                                            <img src="{{ $header_image->image ? $header_image->image_path : '' }}"
                                                class="img-thumbnail" id="image-preview-{{$header_image->id}}" style="width: 100px;">
                                        </div>
                                        @push('scripts')
                                        <script>
                                            $("#image-{{$header_image->id}}").change(function() {
                                                if (this.files && this.files[0]) {
                                                    var reader = new FileReader();
                                    
                                                    reader.onload = function(e) {
                                                        $('#image-preview-{{$header_image->id}}').attr('src', e.target.result);
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
                                        <label>@lang('site.'.$locale.'.header') </label>
                                        <textarea type="text" name="{{$header_text->id}}[{{$locale}}][description]" class="form-control" >{{$header_text->translate($locale)->description}}</textarea>
                                    </div>
                                    @endforeach
                
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>

                    <div class="panel box box-primary">
                        <div class="box-header with-border">
                        <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                @lang('site.our_vision')
                            </a>
                        </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                        <div class="box-body">
        
                            @foreach(config('translatable.locales') as $locale)                             
                            <div class="form-group">
                                <label>@lang('site.'.$locale.'.our_vision')</label>
                                <textarea type="text" name="{{$our_vision->id}}[{{$locale}}][description]" class="form-control" >{{$our_vision->translate($locale)->description}}</textarea>
                            </div>
                            @endforeach
        
                        </div>
                        </div>
                    </div>

                    <div class="panel box box-primary">
                        <div class="box-header with-border">
                        <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                @lang('site.our_mission')
                            </a>
                        </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse in">
                        <div class="box-body">
        
                            @foreach(config('translatable.locales') as $locale)                             
                            <div class="form-group">
                                <label>@lang('site.'.$locale.'.our_mission')</label>
                                <textarea type="text" name="{{$our_mission->id}}[{{$locale}}][description]" class="form-control" >{{$our_mission->translate($locale)->description}}</textarea>
                            </div>
                            @endforeach
        
                        </div>
                        </div>
                    </div>

                    <div class="panel box box-primary">
                        <div class="box-header with-border">
                        <h4 class="box-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                @lang('site.certifications')
                            </a>
                        </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse in">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>{{ $certifications_image_1->name }}</label>
                                            <input type="file" name="{{$certifications_image_1->id}}[image]" class="form-control" id="image-{{$certifications_image_1->id}}">
                                            
                                            <div class="form-group">
                                                <img src="{{ $certifications_image_1->image ? $certifications_image_1->image_path : '' }}"
                                                    class="img-thumbnail" id="image-preview-{{$certifications_image_1->id}}" style="width: 100px;">
                                            </div>
                                            @push('scripts')
                                            <script>
                                                $("#image-{{$certifications_image_1->id}}").change(function() {
                                                    if (this.files && this.files[0]) {
                                                        var reader = new FileReader();
                                        
                                                        reader.onload = function(e) {
                                                            $('#image-preview-{{$certifications_image_1->id}}').attr('src', e.target.result);
                                                        }
                                                        reader.readAsDataURL(this.files[0]); // convert to base64 string
                                                    }
                                                });
                                            </script>
                                            @endpush
                                        </div>
                                    </div>

                                    <div class="col-md-6">

                                        <div class="form-group">
                                            <label>{{ $certifications_image_2->name }}</label>
                                            <input type="file" name="{{$certifications_image_2}}[image]" class="form-control" id="image-{{$certifications_image_2->id}}">
                                            
                                            <div class="form-group">
                                                <img src="{{ $certifications_image_2->image ? $certifications_image_2->image_path : '' }}"
                                                    class="img-thumbnail" id="image-preview-{{$certifications_image_2->id}}" style="width: 100px;">
                                            </div>
                                            @push('scripts')
                                            <script>
                                                $("#image-{{$certifications_image_2->id}}").change(function() {
                                                    if (this.files && this.files[0]) {
                                                        var reader = new FileReader();
                                        
                                                        reader.onload = function(e) {
                                                            $('#image-preview-{{$certifications_image_2->id}}').attr('src', e.target.result);
                                                        }
                                                        reader.readAsDataURL(this.files[0]); // convert to base64 string
                                                    }
                                                });
                                            </script>
                                            @endpush
                                        </div>

                                    </div>



                                </div>

                                <div class="col-md-6">
                                    @foreach(config('translatable.locales') as $locale)                             
                                    <div class="form-group">
                                        <label>@lang('site.'.$locale.'.certifications')</label>
                                        <textarea type="text" name="{{$certifications->id}}[{{$locale}}][description]" class="form-control" >{{$certifications->translate($locale)->description}}</textarea>
                                    </div>
                                    @endforeach
                
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
        
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
</div>