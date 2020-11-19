@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.messages')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li class="active"></i> @lang('site.messages')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.messages')
                        <small>{{ $messages->total() }}</small>
                    </h3>
                    <form action="{{ route('dashboard.contact.index') }}" method="get">
                        <div class="row">

                            <div class="col-md-4">
                                <input type="text" name="search" class="form-control" value="{{ request()->search }}"
                                       placeholder="@lang('site.search')">
                            </div>

                            <div class="col-md-4">
                                <button type="submit" class="btn btn-primary"><i
                                            class="fa fa-search"></i>@lang('site.search')</button>
                            </div>
                        </div>

                    </form>
                </div>
                <div class="box-body">

                    @if($messages->count() > 0)
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th style="width: 10px">#</th>
                                <th>@lang('site.name')</th>
                                @if (route('dashboard.contact.index') == url()->current() )
                                <th>@lang('site.phone')</th>
                                @endif
                                <th>@lang('site.email')</th>
                                <th>@lang('site.message')</th>
                                <th>@lang('site.created_at')</th>
                                <th>@lang('site.action')</th>
                            </tr>
                            </thead>

                            <tbody>
                            @foreach($messages as $index => $message)
                                <tr>
                                    <td>{{ $index +1 }}</td>
                                    <td>{{ $message->name }}</td>
                                    @if (route('dashboard.contact.index') == url()->current() )
                                    <td>{{ $message->phone }}</td>
                                    @endif
                                    <td>{{ $message->email }}</td>

                                    <td> 
                                        <button type="button" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#modal-default-{{$message->id}}">
                                            <i class="fa fa-file-image-o"></i> @lang('site.view_message')
                                        </button>

                                        <div class="modal fade" id="modal-default-{{$message->id}}">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title">{{$message->name}}</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row" style="display: inline;">
                                                            <div>
                                                                {{$message->body}}

                                                            </div>                                   
                                                        </div>                                                    
                                                    </div>
                                                    <div class="modal-footer">
                                                        <a  href="mailto:{{$message->email}}" class="btn btn-primary">@lang('site.replay')</a>

                                                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                          <!-- /.modal -->
 
                                    
                                    </td>
                                    <td>{{ $message->created_at->diffForHumans() }}</td>
                                    <td>

    
                                            <form method="post"
                                                  action="{{ route('dashboard.contact.destroy',$message) }}"
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
                        {{ $messages->appends(request()->query())->links() }}
                    @else
                        <h2>@lang('site.no_data_found')</h2>
                    @endif

                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
