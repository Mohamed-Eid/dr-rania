@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.lectures')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.lectures.index')}}">@lang('site.lectures')</a></li>
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
                    <form action="{{ route('dashboard.lectures.store') }}" method="post" enctype="multipart/form-data">
                        @csrf

                        @include('dashboard.lectures.form')

                    </form>
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
