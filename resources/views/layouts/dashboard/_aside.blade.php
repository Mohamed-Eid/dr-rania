<aside class="main-sidebar">

    <section class="sidebar">

        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ auth()->user()->image_path }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>
                    {{ auth()->user()->first_name . ' ' . auth()->user()->last_name }}
                </p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <ul class="sidebar-menu" data-widget="tree">
            <li class="{{ route('dashboard.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.index') }}"><i
                        class="fa fa-th"></i><span>@lang('site.dashboard')</span></a>
            </li>

            <li class="{{route('dashboard.settings.all_settings')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.settings.all_settings') }}">
                    <i class="fa  fa-gear"></i> @lang('site.settings')
                </a>
            </li>

            <li class="{{ route('dashboard.users.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.users.index') }}">
                    <i class="fa fa-users"></i><span>@lang('site.users')</span></a>
            </li>

            <li class="{{ route('dashboard.awards.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.awards.index') }}">
                    <i class="fa fa-graduation-cap"></i><span>@lang('site.awards')</span></a>
            </li>

            <li class="{{ route('dashboard.congress.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.congress.index') }}">
                    <i class="fa fa-graduation-cap"></i><span>@lang('site.congress')</span></a>
            </li>

        </ul>

    </section>

</aside>

@push('scripts')
    <script>
        // $('.treeview').click(function(){
        //     $(this).addClass('active').siblings().removeClass('active');
        // });
        if ($('.page-list').hasClass('active')) {
            $('.treeview').addClass('active');
        }

    </script>
@endpush
