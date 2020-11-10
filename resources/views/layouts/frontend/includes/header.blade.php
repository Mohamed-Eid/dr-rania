<!DOCTYPE html>
<html dir="{{ app()->getLocale() == 'ar' ? 'rtl' : 'ltr' }}" lang="{{ app()->getLocale() }}">

<meta name="description" content="{{ get_setting_by_key('description')->description }}">
<meta name="keywords" content="{{ get_setting_by_key('keywords')->description }}">
<meta name="author" content="{{ get_setting_by_key('author')->one_value }}">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="og:url" content="">
<meta property="og:type" content="">
<meta property="og:title" content="">
<meta property="og:description" content=" ">
<meta property="og:image" content="">
<title>Capital Diesel</title>
<link rel="shortcut icon" href="{{ asset('frontend/Technomasr/images/Logo.png') }}" sizes="25x25">

<!-- Stylesheets -->
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/bootstrap4/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/css/animate.css" type="text/css') }}">
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/css/fonts/fontawesome/css/all.css') }}">
<!-- Owl carousel -->
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/owl-carousel/owl.carousel.css') }}" />
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/owl-carousel/owl.theme.css') }}" />
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/owl-carousel/owl.transitions.css') }}" />


<!-- Main Style -->
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/css/basic.css') }}" type="text/css">
<link rel="stylesheet" href="{{ asset('frontend/Technomasr/css/style.css') }}" type="text/css">
@if (app()->getLocale() == 'ar')
{{-- <link rel="stylesheet" href="{{asset('frontend/Technomasr/css/style-ar.css')}}" type="text/css" /> --}}
<style>
    /* todo:delete after upgrade */
    .owl-carousel,
    .bx-wrapper { direction: ltr; }
    .owl-carousel .owl-item { direction: rtl; }
</style>
@endif


</head>

<body>
    <!-- start header-->
    <header>
        <div class="site-header">

            <!-- Menu -->
            <div class="header-menu bg-white" id="menu">
                <div class="container-fluid">
                    <nav class="navbar navbar-expand-lg bg-white">
                        <a class="navbar-brand" href="{{ route('frontend.index')  }}"><img
                                src="{{ asset('frontend/Technomasr/images/Logo.png') }}" class="logo"
                                alt="Site name"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item {{route('frontend.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.index')  }}">@lang('site.home')</a>
                                </li>
                                <li class="nav-item {{route('frontend.contact.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.contact.index') }}">@lang('site.contact_us')</a>
                                </li>
                                <li class="nav-item {{route('frontend.about_us')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.about_us') }}">@lang('site.about_us')</a>
                                </li>
                                <li class="nav-item {{route('frontend.categories.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.categories.index') }}">@lang('site.products')</a>
                                    <ul class="sub-menu simple-shadow">
                                        <li><a href="{{ route('frontend.products.index') }}">@lang('site.inventory')</a></li>
                                        <li><a href="{{ route('frontend.sectors.index') }}">@lang('site.market_sectors')</a></li>

                                    </ul>
                                </li>
                                <li class="nav-item {{route('frontend.partners.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.partners.index') }}">@lang('site.partners_testmonials')</a>
                                </li>
                                <li class="nav-item {{route('frontend.careers.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.careers.index') }}">@lang('site.careers')</a>
                                </li>
                                <li class="nav-item {{route('frontend.cultures.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.cultures.index') }}">@lang('site.culture')</a>
                                </li>
                                <li class="nav-item {{route('frontend.blog.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.blog.index') }}">@lang('site.news')</a>
                                </li>
                                <li class="nav-item {{route('frontend.delars.index')==url()->current() ? 'active' : '' }}">
                                    <a class="nav-link" href="{{ route('frontend.delars.index') }}">@lang('site.delar_locator')</a>
                                </li>

                            </ul>
                            <form class="form-inline my-2 my-lg-0 header-search" method="GET" action="{{ route('frontend.search') }}">
                                <input class="form-control mr-sm-2" type="search" placeholder="@lang('site.search')"
                                    aria-label="Search">
                                <button class="btn  my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                            </form>
                            @if (app()->getLocale() != 'ar')
                            <a href="{{ route('change_language','ar') }}" class="btn btn-danger rounded-circle bold lang-btn">ع</a>

                            @else
                            <a href="{{ route('change_language','en') }}" class="btn btn-danger rounded-circle bold lang-btn">E</a>

                            @endif
                        </div>
                    </nav>
                </div>
            </div>

            <!-- #END# Menu -->
        </div>
        <div class="mobile-header">
            <div class="white-bg container-fluid ">
                <a href="index.php">
                    <img src="{{ asset('frontend/Technomasr/images/logo.png') }}" class="logo" alt="">
                </a>

                <div class="responsive-menu pull-left">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn font-color" onclick="closeNav()">&times;</a>
                        <form class="form-inline my-2 my-lg-0 header-search">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn  my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                        </form>

                        <ul>
                            <li>
                                <a href="#">Home<span class="sr-only">(current)</span></a>
                            </li>
                            <li><a href="#">Item</a></li>
                            <li><a href="#">Item</a></li>
                            <li><a href="#">Item</a></li>
                            <li><a href="#">Item</a></li>

                        </ul>

                    </div>


                    <span class="close-btn font-color float-left m-l-25 m-r-15" onclick="openNav()">&#9776;</span>

                    <div class="clearfix"></div>
                </div>
                <a href="index-ar.php" class="btn btn-danger rounded-circle bold lang-btn pull-right m-t-10">ع</a>
                <div class="clearfix"></div>
            </div>


        </div>
    </header>
