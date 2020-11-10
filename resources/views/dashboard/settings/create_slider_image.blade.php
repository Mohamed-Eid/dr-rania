<button type="button" class="btn btn-default" data-toggle="modal" data-target="#modal-default">
    Launch Default Modal
</button>
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Default Modal</h4>
        </div>
        <div class="modal-body">

            <form action="{{ route('dashboard.settings.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label></label>
                    <input type="file" name="image" class="form-control" id="image">
                    <div class="form-group">
                        <img src="" style="width: 100px;">
                    </div>
                    @push('scripts')
                    <script>
                        $("#image").change(function() {
                            if (this.files && this.files[0]) {
                                var reader = new FileReader();
                
                                reader.onload = function(e) {
                                    $('#image-preview').attr('src', e.target.result);
                                }
                                reader.readAsDataURL(this.files[0]); // convert to base64 string
                            }
                        });
                    </script>
                @endpush
                </div>
                
                <div class="form-group" hidden>
                    <label>site.class</label>
                    <input type="text" name="class" class="form-control" value="slider">
                </div>
                <input type="hidden" name="type" class="form-control" value="image">

                <div class="form-group" hidden>
                    <label>site.key</label>
                <input type="text" name="key" class="form-control" value="{{ 'slider_image_'.((int)substr(end($items)->key, -1) + 1) }}" >
                </div>

                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.description')</label>
                    <textarea type="text" name="{{$locale}}[description]" class="form-control" rows="4" cols="50" > 
                        
                    </textarea>                                        
                </div>
                @endforeach

                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.title')</label>
                    <input type="text" name="{{$locale}}[value]" class="form-control" value="" >
                </div>
                @endforeach

                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.link') </label>
                    <input type="text" name="{{$locale}}[link]" class="form-control" value="" >
                </div>
                @endforeach

                <div class="form-group">
                    <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                    </button>
                </div>
            </form>   

        </div>
    </div>
    <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>