@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.congress')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.congress.index')}}">@lang('site.congress')</a></li>
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
                    <form action="{{ route('dashboard.congress.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>@lang('site.congress_title')</label>
                            <input type="text" name="congress_title" class="form-control" value="{{ old('congress_title') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.role')</label>
                            <input type="text" name="role" class="form-control" value="{{ old('role') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.event_title')</label>
                            <input type="text" name="event_title" class="form-control" value="{{ old('event_title') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.date')</label>
                            <input type="date" name="date" class="form-control" value="{{ old('date') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.location')</label>
                            <input type="text" name="location" class="form-control" value="{{ old('location') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.image')</label>
                            <input type="file" name="image" class="form-control image">
                        </div>

                        <div class="form-group">
                            <img src="{{ asset('uploads/congress_images/default.png') }}"
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
