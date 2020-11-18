<form action="{{ route('dashboard.update_workshops',$workshop) }}" method="post" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label>@lang('site.title')</label>
        <input type="text" name="title" class="form-control" value="{{ $workshop->title }}"
               required>
    </div>

    <div class="form-group">
        <label>@lang('site.body')</label>
        <textarea  name="body" class="form-control" required>{{ $workshop->body }}</textarea>
    </div>


    <div class="form-group">
        <label>@lang('site.image')</label>
        <input type="file" name="image" class="form-control image-workshop-{{$workshop->id}}">
    </div>

    <div class="form-group">
        <img src="{{$workshop->image_path}}"
             class="img-thumbnail image-preview-workshop-{{$workshop->id}}" style="width: 100px;">
    </div>

    @push('scripts')
        <script>
        $(".image-workshop-{{$workshop->id}}").change(function() {
            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('.image-preview-workshop-{{$workshop->id}}').attr('src', e.target.result);
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