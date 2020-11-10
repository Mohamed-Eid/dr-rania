@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.awards')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li class="active"></i> @lang('site.awards')</li>

            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.awards')
                        <small>{{ $awards->total() }}</small>
                    </h3>
                    <form action="{{ route('dashboard.awards.index') }}" method="get">
                        <div class="row">

                            <div class="col-md-4">
                                <input type="text" name="search" class="form-control" value="{{ request()->search }}"
                                       placeholder="@lang('site.search')">
                            </div>

                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><i
                                            class="fa fa-search"></i>@lang('site.search')</button>
                                {{-- @if(auth()->award()->hasPermission('create_awards')) --}}
                                    <a href="{{ route('dashboard.awards.create') }}" class="btn btn-primary"><i
                                                class="fa fa-plus"></i>@lang('site.add')</a>
                                {{-- @else
                                    <a class="btn btn-info" href="#" disabled>@lang('site.add')</a>
                                @endif --}}

                            </div>
                        </div>

                    </form>
                </div>
                <div class="box-body">

                    @if($awards->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>@lang('site.title')</th>
                                <th>@lang('site.country')</th>
                                <th>@lang('site.year')</th>
                                <th>@lang('site.image')</th>
                                <th>@lang('site.action')</th>
                            </tr>
                            </thead>

                            <tbody>
                            @foreach($awards as $index => $award)
                                <tr>
                                    <td>{{ $index +1 }}</td>
                                    <td>{{ $award->title }}</td>
                                    <td>{{ $award->country }}</td>
                                    <td>{{ $award->year }}</td>
                                    <td><img src="{{ $award->image_path }}" class="img-thumbnail" style="width: 50px;">
                                    </td>
                                    <td>
                                        <a class="btn btn-info btn-sm"
                                            href="{{route('dashboard.awards.edit' , $award->id)}}"><i
                                                    class="fa fa-edit"></i>@lang('site.edit')</a>

                                        <form method="post"
                                                action="{{route('dashboard.awards.destroy' , $award->id)}}"
                                                style="display: inline-block">
                                            @csrf()
                                            @method('delete')
                                            <button type="submit" class="btn btn-danger btn-sm delete"><i
                                                        class="fa fa-trash"></i>@lang('site.delete')</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>

                        </table>
                        {{ $awards->appends(request()->query())->links() }}
                    @else
                        <h2>@lang('site.no_data_found')</h2>
                    @endif

                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
