
<form action="{{route('dashboard.settings.destroy' , ['setting' => $item])}}" method="POST">
    @csrf
    @method('delete')
    <button class="btn btn-danger delete" type="button"><i class="fa fa-trash"></i>@lang('site.delete')
    </button>
</form>   