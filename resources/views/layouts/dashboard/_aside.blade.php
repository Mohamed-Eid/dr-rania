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

            <li class="{{ route('dashboard.awards.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.awards.index') }}">
                    <i class="fa fa-gift"></i><span>@lang('site.awards')</span></a>
            </li>

            <li class="{{ route('dashboard.home_publications') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.home_publications') }}">
                    <i class="fa fa-newspaper-o"></i><span>Home Publications</span></a>
            </li>

            <li class="{{ route('dashboard.case_author') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.case_author') }}">
                    <i class="fa fa-briefcase"></i><span>Case Author</span></a>
            </li>

            <li class="{{ route('dashboard.esteems.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.esteems.index') }}">
                    <i class="fa fa-question"></i><span>@lang('site.esteems')</span></a>
            </li>


            <li class="{{ route('dashboard.theses.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.theses.index') }}">
                    <i class="fa fa-exchange"></i><span>@lang('site.theses')</span></a>
            </li>


            <li class="{{ route('dashboard.certifications.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.certifications.index') }}">
                    <i class="fa fa-certificate"></i><span>Certifications</span></a>
            </li>


            <li class="{{ route('dashboard.publications.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.publications.index') }}">
                    <i class="fa fa-newspaper-o"></i><span>@lang('site.publications')</span></a>
            </li>

            <li class="{{ route('dashboard.lectures.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.lectures.index') }}">
                    <i class="fa  fa-video-camera"></i><span>@lang('site.lectures')</span></a>
            </li>

            <li class="{{ route('dashboard.workshops.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.workshops.index') }}">
                    <i class="fa fa-institution"></i><span>@lang('site.workshops')</span></a>
            </li>


            <li class="{{ route('dashboard.congress.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.congress.index') }}">
                    <i class="fa fa-file-text"></i><span>@lang('site.congress')</span></a>
            </li>

            <li class="{{route('dashboard.center.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.center.index') }}">
                    <i class="fa  fa-gears"></i> @lang('site.center_index')
                </a>
            </li>

            <li class="{{route('dashboard.excellence_center.index')==url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.excellence_center.index') }}">
                    <i class="fa  fa-gears"></i> @lang('site.excellence_center')
                </a>
            </li>

            <li class="{{ route('dashboard.users.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.users.index') }}">
                    <i class="fa fa-users"></i><span>@lang('site.users')</span></a>
            </li>

            <li class="{{ route('dashboard.contact.center_index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.contact.center_index') }}">
                    <i class="fa  fa-envelope-o"></i><span>@lang('site.center_contact_messages')</span></a>
            </li>

            <li class="{{ route('dashboard.subscribers.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.subscribers.index') }}">
                    <i class="fa fa-bell"></i><span>Subscribers</span></a>
            </li>
            


            <li class="{{ route('dashboard.contact.index') == url()->current() ? 'active' : '' }}">
                <a href="{{ route('dashboard.contact.index') }}">
                    <i class="fa  fa-envelope"></i><span>@lang('site.dr_contact_messages')</span></a>
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
