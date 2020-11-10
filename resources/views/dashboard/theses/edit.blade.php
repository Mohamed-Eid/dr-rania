@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.publications')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.publications.index')}}">@lang('site.publications')</a></li>
                <li class="active"></i> @lang('site.edit')</li>

            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.edit')</h3>
                </div>
                <div class="box-body">

                    @include('partials._errors')
                    <form action="{{ route('dashboard.publications.update',$publication) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label>@lang('site.type')</label>

                            <select name="type" class="form-control">
                                @php
                                    $types = ['book','research','article'];
                                @endphp
                                @foreach ($types as $type)
                                <option value="{{$type}}" {{ $publication->type == $type ? 'selected' : '' }}>{{ ucwords($type) }}</option>
                                @endforeach 
                            </select>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.title')</label>
                            <input type="text" name="title" class="form-control" value="{{ $publication->title }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.body')</label>
                            <input type="text" name="body" class="form-control" value="{{ $publication->body }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.date')</label>
                            <input type="date" name="date" class="form-control" value="{{ $publication->date }}"
                                   required>
                        </div>

                        <div class="row">

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>@lang('site.icon')</label>
                                    <input type="file" name="icon" class="form-control image">
                                </div>
        
                                <div class="form-group">
                                    <img src="{{ $publication->icon_path }}"
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
                                    src="{{ $publication->pdf_path }}" type="application/pdf"
                                    width="100%" height="100%"
                                    ></iframe>
                                </div>
                            </div>
                        
                        </div>

                        
                        <div class="form-group">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
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