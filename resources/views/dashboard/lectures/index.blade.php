@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.lectures')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{ route('dashboard.index') }}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li class="active"></i> @lang('site.lectures')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.lectures')
                        <small>{{ $lectures->total() }}</small>
                    </h3>
                    <form action="{{ route('dashboard.lectures.index') }}" method="get">
                        <div class="row">

                            <div class="col-md-4">
                                <input type="text" name="search" class="form-control" value="{{ request()->search }}"
                                       placeholder="@lang('site.search')">
                            </div>

                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><i
                                        class="fa fa-search"></i>@lang('site.search')
                                </button>
                                <a href="{{ route('dashboard.lectures.create') }}" class="btn btn-primary"><i
                                    class="fa fa-plus"></i>@lang('site.add')</a>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="box-body">

                    @if ($lectures->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>@lang('site.title')</th>
                                    <th>@lang('site.video')</th>
                                    <th>@lang('site.action')</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($lectures as $index => $lecture)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $lecture->title }}</td>
                                        <td>
                                            <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"
                                                data-target="#modal-default-{{ $lecture->id }}">
                                                <i class="fa fa-file-image-o"></i> @lang('site.view_pdf')
                                            </button>
                                            <div class="modal fade" id="modal-default-{{ $lecture->id }}">
                                                <div class="modal-dialog  modal-dialog-centered modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span></button>
                                                                <p>{{ $lecture->body }}</p>
                                                        </div>
                                                        <div class="modal-body text-center" style="height: 500px;">
                                                            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/{{ $lecture->video_id }}" 
                                                            frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                                                            allowfullscreen></iframe>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default pull-left"
                                                                data-dismiss="modal">Close</button>
                                                            <a href="{{ $lecture->pdf_path }}" class="btn btn-warning pull-left" download>Download</a>

                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </td>


                                        <td>{{ $lecture->created_at->diffForHumans() }}</td>
                                        <td>
                                            <a class="btn btn-info btn-sm"
                                            href="{{route('dashboard.lectures.edit' , $lecture->id)}}"><i
                                                    class="fa fa-edit"></i>@lang('site.edit')
                                            </a>

                                            <form method="post"
                                                action="{{ route('dashboard.lectures.destroy', $lecture->id) }}"
                                                style="display: inline-block">
                                                @csrf
                                                @method('delete')
                                                <button type="submit" class="btn btn-danger btn-sm delete"><i
                                                        class="fa fa-trash"></i>@lang('site.delete')</button>
                                            </form>

                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>

                        </table>
                        {{ $lectures->appends(request()->query())->links() }}
                    @else
                        <h2>@lang('site.no_data_found')</h2>
                    @endif

                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
