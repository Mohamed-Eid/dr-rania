@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.settings')
            </h1>
        </section>

        <section class="content">

            <div class="box box-primary">

                <div class="box-body">

                    @include('partials._errors')
                        <form action="{{ route('dashboard.edit_case_author') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            @method('put') 
                            @foreach (get_objects_by_class('case_author') as $index => $item)
                            <h4> Case Author #{{ $index + 1 }} </h4>
                            <div class="row">                                    
                                <div class="col-md-9">
                                    <div class="form-group">
                                        <label>Title</label>
                                        <input type="text" name="{{$item->id}}[title]" class="form-control" value="{{ $item->value['title'] ?? '' }}" >
                                    </div>  

                                    <div class="form-group">
                                        <label>Date</label>
                                        <input type="date" name="{{$item->id}}[date]" class="form-control" value="{{ $item->value['date'] ?? '' }}" >
                                    </div>

                                    <div class="form-group">
                                        <label>Details</label>
                                        <textarea rows="3" name="{{$item->id}}[details]" class="form-control" >{{ $item->value['details'] ?? '' }}</textarea>
                                    </div>
                                    
   
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file" id="image-{{$item->id}}" name="{{$item->id}}[image]" class="form-control" value="" >
                                        <img src="{{ image_path('object_images',$item->value['image']) ?? '' }}"
                                        class="img-thumbnail" id="image-preview-{{$item->id}}" style="width: 280px;height: 190px;">
                                    </div> 
                                </div>
                                <hr>
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
                            @endforeach

                            <div class="form-group">
                                <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                                </button>
                            </div>
                        </form>   
                        
                        <!-- /.col -->
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection

@push('scripts')


@endpush 
