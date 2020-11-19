@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.esteems')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{ route('dashboard.index') }}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li class="active"></i> @lang('site.esteems')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.esteems')
                        <small>{{ $esteems->total() }}</small>
                    </h3>
                    <form action="{{ route('dashboard.esteems.index') }}" method="get">
                        <div class="row">

                            <div class="col-md-4">
                                <input type="text" name="search" class="form-control" value="{{ request()->search }}"
                                       placeholder="@lang('site.search')">
                            </div>

                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><i
                                        class="fa fa-search"></i>@lang('site.search')
                                </button>
                                <a href="{{ route('dashboard.esteems.create') }}" class="btn btn-primary"><i
                                    class="fa fa-plus"></i>@lang('site.add')</a>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="box-body">

                    @if ($esteems->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>@lang('site.name')</th>
                                    <th>@lang('site.title')</th>
                                    <th>@lang('site.body')</th>
                                    <th>@lang('site.type') - @lang('site.name')</th>
                                    <th>@lang('site.date')</th>
                                    <th>@lang('site.image')</th>
                                    <th>@lang('site.action')</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($esteems as $index => $esteem)
                                    <tr>
                                        <td>{{ $index + 1 }}</td>
                                        <td>{{ $esteem->name }}</td>
                                        <td>{{ $esteem->title }}</td>
                                        <td>
                                            <button type="button" class="btn btn-warning btn-sm" data-toggle="modal"
                                                data-target="#modal-default-{{ $esteem->id }}">
                                                <i class="fa fa-file-image-o"></i> @lang('site.view_body')
                                            </button>
                                            <div class="modal fade" id="modal-default-{{ $esteem->id }}">
                                                <div class="modal-dialog  modal-dialog-centered modal-lg">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span></button>
                                                                <p>{{ $esteem->body }}</p>
                                                        </div>
                                                        <div class="modal-body text-center" style="height: 500px;">
                                                            {{ $esteem->body }}
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-default pull-left"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </td>
                                        <td>
                                            @if ($esteem->esteemable && $esteem->esteemable_type == 'App\Event')
                                            {{ 'Congress - ' .$esteem->esteemable->congress_title .'-'.$esteem->esteemable->event_title}}
                                            @elseif($esteem->esteemable && $esteem->esteemable_type == 'App\Workshop')
                                            {{ 'Workshop - ' .$esteem->esteemable->title}}
                                            @else
                                            Home
                                            @endif
                                        </td>
                                        <td>{{ $esteem->date }}</td>
                                        <td><img src="{{ $esteem->image_path }}" class="img-thumbnail" style="width: 50px;">

                                        <td>
                                            <a class="btn btn-info btn-sm"
                                            href="{{route('dashboard.esteems.edit' , $esteem->id)}}"><i
                                                    class="fa fa-edit"></i>@lang('site.edit')
                                            </a>

                                            <form method="post"
                                                action="{{ route('dashboard.esteems.destroy', $esteem->id) }}"
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
                        {{ $esteems->appends(request()->query())->links() }}
                    @else
                        <h2>@lang('site.no_data_found')</h2>
                    @endif

                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
