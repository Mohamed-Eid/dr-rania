<div class="form-group">
    <label>@lang('site.type')</label>

    <select id="style-type" name="type" class="form-control">
        @php
            $types = ['home','congress','workshop'];
        @endphp
        @foreach ($types as $type)
        <option value="{{$type}}" {{ isset($esteem->type) ? ($type == $esteem->type ? 'selected' : '' ) : ''  }} >{{ ucwords($type) }}</option>
        @endforeach 
    </select>
</div>

<div class="form-group congress-toggler-container">
    <label>@lang('site.congress')</label>

    <select name="congress" class="form-control">
        @foreach ($congress as $event)
        <option value="{{$event->id}}">{{ ucwords($event->congress_title.' - '.$event->event_title) }}</option>
        @endforeach 
    </select>
</div>

<div class="form-group workshop-toggler-container">
    <label>@lang('site.workshop')</label>

    <select name="workshop" class="form-control">
        @foreach ($workshops as $workshop)
        <option value="{{$workshop->id}}">{{ ucwords($workshop->title) }}</option>
        @endforeach 
    </select>
</div>


<div class="form-group">
    <label>@lang('site.name')</label>
    <input type="text" name="name" class="form-control" value="{{ $esteem->name ?? old('name') }}"
           required>
</div>

<div class="form-group">
    <label>@lang('site.title')</label>
    <input type="text" name="title" class="form-control" value="{{ $esteem->title ?? old('title') }}"
           required>
</div>


<div class="form-group">
    <label>@lang('site.body')</label>
    <textarea  name="body" class="form-control" required>{{ $esteem->body ?? old('body') }}</textarea>
</div>


<div class="form-group">
    <label>@lang('site.date')</label>
    <input type="date" name="date" class="form-control" value="{{ $esteem->date ?? old('date') }}"
           required>
</div>

<div class="form-group">
    <label>@lang('site.image')</label>
    <input type="file" name="image" class="form-control image">
</div>

<div class="form-group">
    <img src="{{ $esteem->image_path  ?? '' }}"
         class="img-thumbnail image-preview" style="width: 100px;">
</div>


@push('scripts')
    <script>
        $(document).ready( function(){
            // $('.congress-toggler-container').css( 'display' , 'none' );

                let selectorValue = $('#style-type').children('option:checked').val();
                if ( selectorValue == 'home' ) {
                    $('.congress-toggler-container').css( 'display' , 'none' );
                    $('.workshop-toggler-container').css( 'display' , 'none' );
                } else if ( selectorValue == 'congress' ) {
                    $('.congress-toggler-container').css( 'display' , 'block' );
                    $('.workshop-toggler-container').css( 'display' , 'none' );
                } else if ( selectorValue == 'workshop' ) {
                    $('.workshop-toggler-container').css( 'display' , 'block' );
                    $('.congress-toggler-container').css( 'display' , 'none' );
                }

        });

        $('#style-type').on('change' , function(){
                let selectorValue = $('#style-type').children('option:checked').val();
                if ( selectorValue == 'home' ) {
                    $('.congress-toggler-container').css( 'display' , 'none' );
                    $('.workshop-toggler-container').css( 'display' , 'none' );
                } else if ( selectorValue == 'congress' ) {
                    $('.congress-toggler-container').css( 'display' , 'block' );
                    $('.workshop-toggler-container').css( 'display' , 'none' );
                } else if ( selectorValue == 'workshop' ) {
                    $('.workshop-toggler-container').css( 'display' , 'block' );
                    $('.congress-toggler-container').css( 'display' , 'none' );
                }
            });
    </script>
@endpush