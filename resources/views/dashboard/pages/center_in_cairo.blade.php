@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">
    <form>
        @include('partials._errors')
        @csrf
        @method('put')

        <div class="row">
            <div class="col-md-12">
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            Pelvic Floor Center In Cairo University
                        </h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="box-group" id="accordion">
                            <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                            <div class="panel box box-primary">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                            Section #1
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="box-body">
                                        <div class="row">
                                            <div class="col-md-8">

                                                <div class="form-group">
                                                    <label>@lang('site.section_title')</label>
                                                    <input type="text" name="title" class="form-control"
                                                        value="{{ old('title') }}" required>
                                                </div>


                                                <div class="form-group">
                                                    <label>@lang('site.descritpion')</label>
                                                    <textarea type="text" name="body"
                                                        class="form-control">{{ old('body') }}</textarea>
                                                </div>

                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>@lang('site.image')</label>
                                                    <input type="file" name="image" class="form-control image">
                                                </div>

                                                <div class="form-group">
                                                    <img src="" class="img-thumbnail image-preview"
                                                        style="width: 100px;">
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>

                            <div class="panel box box-danger">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                            Section #2
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="box-body">

                                        @for($i=0 ; $i<4 ;  $i++)
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>@lang('site.title')</label>
                                                    <input type="text" name="value" class="form-control">
                                                </div>

                                                <div class="form-group">
                                                    <label>@lang('site.title')</label>
                                                    <input type="text" name="year" class="form-control">
                                                </div>

                                                <div class="form-group">
                                                    <label>Image</label>
                                                    <input type="file" name="image" class="form-control"
                                                        id="image-{{ $i }}">

                                                    <div class="form-group">
                                                        <img src="" class="img-thumbnail" id="image-preview-{{ $i }}"
                                                            style="width: 100px;">
                                                    </div>
                                                    @push('scripts')
                                                        <script>
                                                            $("#image-{{ $i }}").change(function () {
                                                                if (this.files && this.files[0]) {
                                                                    var reader = new FileReader();

                                                                    reader.onload = function (e) {
                                                                        $('#image-preview-{{ $i }}').attr(
                                                                            'src', e.target.result);
                                                                    }
                                                                    reader.readAsDataURL(this.files[
                                                                    0]); // convert to base64 string
                                                                }
                                                            });

                                                        </script>
                                                    @endpush
                                                </div>
                                            </div>
                                        @endfor

                                    </div>
                                </div>
                            </div>

                            <div class="panel box box-success">
                                <div class="box-header with-border">
                                    <h4 class="box-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                            Section #3
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="box-body">

                                        @for($i=10 ; $i<13 ;  $i++)
                                            <div class="col-md-4">

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>@lang('site.title')</label>
                                                            <input type="text" name="value" class="form-control">
                                                        </div>
        
                                                        <div class="form-group">
                                                            <label>@lang('site.publisher')</label>
                                                            <input type="text" name="publisher" class="form-control">
                                                        </div>
        
                                                        <div class="form-group">
                                                            <label>@lang('site.author')</label>
                                                            <input type="text" name="author" class="form-control">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6" style="border-right: 1px solid #888;">
                                                        <div class="form-group">
                                                            <label>@lang('site.year')</label>
                                                            <input type="text" name="year" class="form-control">
                                                        </div>
        
                                                        <div class="form-group">
                                                            <label>Image</label>
                                                            <input type="file" name="image" class="form-control"
                                                                id="image-{{ $i }}">
        
                                                            <div class="form-group">
                                                                <img src="" class="img-thumbnail" id="image-preview-{{ $i }}"
                                                                    style="width: 100px;">
                                                            </div>
                                                            @push('scripts')
                                                                <script>
                                                                    $("#image-{{ $i }}").change(function () {
                                                                        if (this.files && this.files[0]) {
                                                                            var reader = new FileReader();
        
                                                                            reader.onload = function (e) {
                                                                                $('#image-preview-{{ $i }}').attr(
                                                                                    'src', e.target.result);
                                                                            }
                                                                            reader.readAsDataURL(this.files[
                                                                            0]); // convert to base64 string
                                                                        }
                                                                    });
        
                                                                </script>
                                                            @endpush
                                                        </div>
                                                    </div>

                                                </div>






                                            
                                            </div>
                                        @endfor

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </form>

</div><!-- end of content wrapper -->

@endsection
