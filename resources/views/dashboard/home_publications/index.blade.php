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
                            @foreach (get_objects_by_class('home_publications') as $index => $item)
                            <h4> Home Publications #{{ $index + 1 }} </h4>
                            <div class="row">                                    
                                <div class="col-md-9">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Title</label>
                                                <input type="text" name="{{$item->id}}[title]" class="form-control" value="{{ $item->value['title'] ?? '' }}" >
                                            </div>  
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Author Name</label>
                                                <input type="text" name="{{$item->id}}[author_name]" class="form-control" value="{{ $item->value['author_name'] ?? '' }}" >
                                            </div>  
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Publisher</label>
                                                <input type="text" name="{{$item->id}}[publisher]" class="form-control" value="{{ $item->value['publisher'] ?? '' }}" >
                                            </div>  
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Year</label>
                                                <input type="text" name="{{$item->id}}[year]" class="form-control" value="{{ $item->value['year'] ?? '' }}" >
                                            </div>  
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Type</label>
                                                <select name="{{$item->id}}[type]" class="form-control">
                                                    @php
                                                        $types = ['book','research','article'];
                                                    @endphp
                                                    @foreach ($types as $type)
                                                    <option value="{{$type}}"  {{ $item->value != null ? (isset($item->value['type']) ? ($item->value['type'] == $type ? 'selected' : '') : '' ) : '' }}>{{ ucwords($type) }}</option>
                                                    @endforeach 
                                                </select>
                                            </div>  
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="file" id="image-{{$item->id}}" name="{{$item->id}}[image]" class="form-control" value="" >
                                        <img src="{{ $item->value != null ? image_path('object_images',$item->value['image']) : '' }}"
                                        class="img-thumbnail" id="image-preview-{{$item->id}}" style="width: 100%;height: 180px;">
                                    </div> 
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
                            <hr>

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
