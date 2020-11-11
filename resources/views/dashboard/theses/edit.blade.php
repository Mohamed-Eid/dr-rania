@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.theses')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.theses.index')}}">@lang('site.theses')</a></li>
                <li class="active"></i> @lang('site.add')</li>

            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.add')</h3>
                </div>
                <div class="box-body">

                    @include('partials._errors')
                    <form action="{{ route('dashboard.theses.update' , $thesis) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label>@lang('site.title')</label>
                            <input type="text" name="title" class="form-control" value="{{ $thesis->title }}"
                                   required>
                        </div>

                        
                        <div class="form-group">
                            <label>@lang('site.degree')</label>
                            <input type="text" name="degree" class="form-control" value="{{ $thesis->degree }}"
                                   required>
                        </div>

                        
                        <div class="form-group">
                            <label>@lang('site.student_name')</label>
                            <input type="text" name="student_name" class="form-control" value="{{ $thesis->student_name }}"
                                   required>
                        </div>
                        
                        <div class="form-group">
                            <label>@lang('site.supervisors')</label>
                            <input type="text" name="supervisors" class="form-control" value="{{ $thesis->supervisors }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.discussion_year')</label>
                            <input type="text" name="discussion_year" class="form-control" value="{{ $thesis->discussion_year }}"
                                   required>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>@lang('site.image')</label>
                                    <input type="file" name="image" class="form-control image">
                                </div>
        
                                <div class="form-group">
                                    <img src="{{ $thesis->image_path }}"
                                         class="img-thumbnail image-preview" style="width: 100px;">
                                </div>
        
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>@lang('site.PDF')</label>
                                    <input type="file" name="pdf" class="form-control pdf">
                                </div>
        
                                <div class="form-group">
                                    <iframe class="pdf-preview"
                                    src="{{ $thesis->pdf_path }}" type="application/pdf"
                                    width="100%" height="100%"
                                    ></iframe>
                                </div>
                            </div>
                        
                        </div>

                        
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection

@push('scripts')
    <script>
        $(".pdf").change(function() {
            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function(e) {
                    $('.pdf-preview').attr('src', e.target.result);
                }

                reader.readAsDataURL(this.files[0]); // convert to base64 string
            }
        });
    </script>
@endpush