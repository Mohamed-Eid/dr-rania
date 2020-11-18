<form action="{{ route('dashboard.update_slider',$slider) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label>@lang('site.title')</label>
        <input type="text" name="title" class="form-control" value="{{ $slider->title }}"
               required>
    </div>

    <div class="form-group">
        <label>@lang('site.image')</label>
        <input type="file" name="image" class="form-control image-slider-{{$slider->id}}">
    </div>

    <div class="form-group">
        <img src="{{$slider->image_path}}"
             class="img-thumbnail image-preview-slider-{{$slider->id}}" style="width: 100px;">
    </div>

    @push('scripts')
    <script>
    $(".image-slider-{{$slider->id}}").change(function() {
        if (this.files && this.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('.image-preview-slider-{{$slider->id}}').attr('src', e.target.result);
            }

            reader.readAsDataURL(this.files[0]); // convert to base64 string
        }
    });
    </script>
@endpush

    <div class="form-group">
        {{-- <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
        </button> --}}
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>Save changes</button>

    </div>

</form>