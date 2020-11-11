@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.workshops')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.workshops.index')}}">@lang('site.workshops')</a></li>
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
                    <form action="{{ route('dashboard.workshops.update',$workshop) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        @include('dashboard.workshops.form')
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
