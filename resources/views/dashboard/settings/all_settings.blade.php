@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.settings')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.settings.index')}}">@lang('site.settings')</a></li>
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
                    <div class="row">
                        <div class="col-md-12">
                          <!-- Custom Tabs -->
                          <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                {{-- //tabs --}}
                                @foreach ($data as $name=>$item)
                                
                                @if ($name==array_key_first($data))
                                
                                <li class="active"><a href="#tab_{{$name}}" data-toggle="tab">@lang('site.'.$name)</a></li>               
                                
                                @else
                                
                                <li><a href="#tab_{{$name}}" data-toggle="tab">@lang('site.'.$name)</a></li>
                                
                                @endif
                                
                                @endforeach
                            </ul>

                            <div class="tab-content">
                              @foreach ($data as $name=>$items)
                                <div class="tab-pane {{ $name==array_key_first($data) ? 'active' : '' }}" id="tab_{{$name}}">
                                    @if ($name == 'center_social_settings')
                                    
                                    @include('dashboard.settings.social',['items' => $items])
                                    
                                    @elseif($name == 'dr_social_settings')
                                    
                                    @include('dashboard.settings.social',['items' => $items])                                    
                                    
                                    @endif
                                </div>
    
                                  <!-- /.tab-pane -->
    
                                @endforeach
                            </div>
                            <!-- /.tab-content -->
                          </div>
                          <!-- nav-tabs-custom -->
                        </div>
                        <!-- /.col -->
                    </div>
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection

@push('scripts')


@endpush 
