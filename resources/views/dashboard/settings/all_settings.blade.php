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
                                
                                {{-- @elseif($name=='general_settings') --}}

                                @else
                                
                                <li><a href="#tab_{{$name}}" data-toggle="tab">@lang('site.'.$name)</a></li>
                                
                                @endif
                                
                                @endforeach
                            </ul>

                            <div class="tab-content">
                              @foreach ($data as $name=>$items)
                                <div class="tab-pane {{ $name==array_key_first($data) ? 'active' : '' }}" id="tab_{{$name}}">
                                    @if ($name == 'slider_settings')
                                    
                                    @include('dashboard.settings.slider',['items' => $items])
                                    
                                    @elseif($name == 'about_center_settings')
                                    
                                    @include('dashboard.settings.about_center',['items' => $items])                                    
                                    
                                    @elseif($name == 'features_settings')
                                    
                                    @include('dashboard.settings.features',['items' => $items])                                    
                                    
                                    @elseif($name == 'contact_settings')
                                    @include('dashboard.settings.contact',['items' => $items])                                    

                                    @elseif($name == 'service_features_settings')
                                    @include('dashboard.settings.features',['items' => $items])                                    
                                   
                                    @elseif($name == 'meta_settings')
                                    @include('dashboard.settings.meta',['items' => $items])                                    
                                   
                                    @elseif($name == 'about_settings')
                                    @include('dashboard.settings.about_page',['items' => $items])                                    
                                   
                                    @elseif($name == 'career_settings')
                                    @include('dashboard.settings.career',['items' => $items])                                    
                                    
                                    @elseif($name == 'culture_settings')
                                    @include('dashboard.settings.culture',['items' => $items])
                                    
                                    @elseif($name == 'general_settings')
                                    @include('dashboard.settings.general',['items' => $items])


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
