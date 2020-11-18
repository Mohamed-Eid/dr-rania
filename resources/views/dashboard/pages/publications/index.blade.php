<div class="box-body">

    @include('partials._errors')

    @include('dashboard.pages.publications.create')

</div>
<div class="box-body">

    @if($publications->count() > 0)
        <table class="table table-bordered">
            <thead>
            <tr>
                <th style="width: 10px">#</th>
                <th>@lang('site.title')</th>
                <th>@lang('site.author')</th>
                <th>@lang('site.publisher')</th>
                <th>@lang('site.year')</th>
                <th>@lang('site.image')</th>
                <th>@lang('site.action')</th>
            </tr>
            </thead>

            <tbody>
            @foreach($publications as $index => $publication)
                <tr>
                    <td>{{ $index +1 }}</td>
                    <td>{{ $publication->title }}</td>
                    <td>{{ $publication->author }}</td>
                    <td>{{ $publication->publisher }}</td>
                    <td>{{ $publication->year }}</td>
                    <td><img src="{{ $publication->image_path }}" class="img-thumbnail" style="width: 50px;">
                    </td>
                    <td>
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#modal-default-publications-{{$publication->id}}">
                            <i class="fa fa-edit"></i>@lang('site.edit')                            
                        </button>

                        <div class="modal fade" id="modal-default-publications-{{$publication->id}}">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                  <h4 class="modal-title">Edit {{ $publication->title }}</h4>
                                </div>
                                <div class="modal-body">
                                    @include('dashboard.pages.publications.edit',$publication)
                                </div>
                              </div>
                              <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                          </div>
                          <!-- /.modal -->

                        <form method="post"
                                action="{{route('dashboard.delete_publications' , $publication->id)}}"
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
        {{ $publications->appends(request()->query())->links() }}
    @else
        <h2>@lang('site.no_data_found')</h2>
    @endif

</div>