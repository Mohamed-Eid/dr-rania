@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.certifications')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.certifications.index')}}">@lang('site.certifications')</a></li>
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
                    <form action="{{ route('dashboard.certifications.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>@lang('site.title')</label>
                            <input type="text" name="title" class="form-control" value="{{ old('title') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.major')</label>
                            <input type="text" name="major" class="form-control" value="{{ old('major') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.year')</label>
                            <input type="text" name="year" class="form-control" value="{{ old('year') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.grade')</label>
                            <input type="string" name="grade" class="form-control" value="{{ old('grade') }}"
                                   required>
                        </div>


                        <div class="form-group">
                            <label>@lang('site.image')</label>
                            <input type="file" name="image" class="form-control image">
                        </div>

                        <div class="form-group">
                            <img src="{{ asset('uploads/certifications_images/default.png') }}"
                                 class="img-thumbnail image-preview" style="width: 100px;">
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
