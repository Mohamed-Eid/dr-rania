@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.publications')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{ route('dashboard.index') }}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li class="active"></i> @lang('site.publications')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.publications')
                        <small>{{ $publications->total() }}</small>
                    </h3>
                    <form action="{{ route('dashboard.publications.index') }}" method="get">
                        <div class="row">

                            <div class="col-md-4">
                                <select name="type" class="form-control cities">
                                    @php
                                    $types = ['book','research','article'];
                                    @endphp
                                    <option value="">All</option>
                                    @foreach ($types as $type)
                                    <option value="{{$type}}" {{ request()->type == $type ? 'selected' : '' }}>{{ ucwords($type) }}</option>
                                    @endforeach 
                                </select>
                            </div>

                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><i
                                        class="fa fa-search"></i>@lang('site.search')
                                </button>
                                <a href="{{ route('dashboard.publications.create') }}" class="btn btn-primary"><i
                                    class="fa fa-plus"></i>@lang('site.add')</a>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="box-body">

                    @if ($publications->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>@lang('site.title')</th>
                                    <th>@lang('site.date')</th>
                                    <th>@lang('site.type')</th>
                                    <th>@lang('site.icon')</th>
                                    <th>@lang('site.pdf')</th>
                                    <th>@lang('site.action')</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($publications as $index => $publication)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $publication->title }}</td>
                                        <td>{{ $publication->date }}</td>
                                        <td>{{ $publication->type }}</td>
                                        <td><img src="{{ $publication->icon_path }}" class="img-thumbnail" style="width: 50px;">

                                        <td>
                                            <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"
                                                data-target="#modal-default-{{ $publication->id }}">
                                                <i class="fa fa-file-image-o"></i> @lang('site.view_pdf')
                                            </button>
                                            <div class="modal fade" id="modal-default-{{ $publication->id }}">
                                                <div class="modal-dialog  modal-dialog-centered modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title">{{ $publication->fullname }}</h4>
                                                        </div>
                                                        <div class="modal-body text-center" style="height: 500px;">
                                                            <iframe
                                                            src="{{ $publication->pdf_path }}" type="application/pdf"
                                                            width="100%" height="100%"
                                                            ></iframe>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default pull-left"
                                                                data-dismiss="modal">Close</button>
                                                            <a href="{{ $publication->pdf_path }}" class="btn btn-warning pull-left" download>Download</a>

                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </td>


                                        <td>{{ $publication->created_at->diffForHumans() }}</td>
                                        <td>
                                            <a class="btn btn-info btn-sm"
                                            href="{{route('dashboard.publications.edit' , $publication->id)}}"><i
                                                    class="fa fa-edit"></i>@lang('site.edit')
                                            </a>

                                            <form method="post"
                                                action="{{ route('dashboard.publications.destroy', $publication->id) }}"
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
                        {{ $publications->appends(request()->query())->links() }}
                    @else
                        <h2>@lang('site.no_data_found')</h2>
                    @endif

                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
