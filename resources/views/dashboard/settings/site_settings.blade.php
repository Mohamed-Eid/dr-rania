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
                                @foreach ($data as $name=>$item)

                                @if ($name=="social_links_settings")
                                <li class="active"><a href="#tab_{{$name}}" data-toggle="tab">@lang('site.'.$name)</a></li>               
                                @else
                                <li><a href="#tab_{{$name}}" data-toggle="tab">@lang('site.'.$name)</a></li>
                                @endif
                                @endforeach
                            </ul>
                            <div class="tab-content">
                                @foreach ($data as $name=>$items)
                                <div class="tab-pane {{ $name=="social_links_settings" ? 'active' : '' }}" id="tab_{{$name}}">
                                    @foreach ($items as $item)
                                    @if ($item->type == "text")
                                    <form action="{{ route('dashboard.settings.update',$item) }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        @method('put')    


                                        @foreach(config('translatable.locales') as $locale)                             
                                        <div class="form-group">
                                            <label>{{ $item->translate($locale)->name }}</label>
                                            <input type="text" name="{{$locale}}[value]" class="form-control" value="{{$item->translate($locale)->value}}" >
                                        </div>
                                        @endforeach
                                        @foreach(config('translatable.locales') as $locale)                             
                                        <div class="form-group">
                                            <label>@lang('site.'.$locale.'.description')</label>
                                            <textarea type="text" name="{{$locale}}[description]" class="form-control" > 
                                                {{$item->translate($locale)->description}}
                                            </textarea>
                                        </div>
                                        @endforeach
                                        <div class="form-group">
                                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                                            </button>
                                        </div>
                                    </form>

                                    @elseif($item->type == "image")
                                    <form action="{{ route('dashboard.settings.update',$item) }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        @method('put')                                     
                                        <div class="form-group">
                                            <label>{{ $item->name }}</label>
                                            <input type="file" name="image" class="form-control" id="image-{{$item->id}}">
                                            <div class="form-group">
                                                <img src="{{ asset('uploads/setting_images/'.$item->image)}}"
                                                    class="img-thumbnail" id="image-preview-{{$item->id}}" style="width: 100px;">
                                            </div>
                                            @push('scripts')
                                            <script>
                                                $("#image-{{$item->id}}").change(function() {
                                                    if (this.files && this.files[0]) {
                                                        var reader = new FileReader();
                                        
                                                        reader.onload = function(e) {
                                                            $('#image-preview-{{$item->id}}').attr('src', e.target.result);
                                                        }
                                        
                                                        reader.readAsDataURL(this.files[0]); // convert to base64 string
                                                    }
                                                });
                                            </script>
                                        @endpush
                                        </div>
                                        @foreach(config('translatable.locales') as $locale)                             
                                        <div class="form-group">
                                            <label>@lang('site.'.$locale.'.description')</label>
                                            <textarea type="text" name="{{$locale}}[description]" class="form-control" > 
                                                {{$item->translate($locale)->description}}
                                            </textarea>                                        </div>
                                        @endforeach

                                        @foreach(config('translatable.locales') as $locale)                             
                                        <div class="form-group">
                                            <label>@lang('site.'.$locale.'.title') {{ $item->name }}</label>
                                            <input type="text" name="{{$locale}}[value]" class="form-control" value="{{$item->translate($locale)->value}}" >
                                        </div>
                                        @endforeach

                                        @foreach(config('translatable.locales') as $locale)                             
                                        <div class="form-group">
                                            <label>@lang('site.'.$locale.'.link') {{ $item->name }}</label>
                                            <input type="text" name="{{$locale}}[link]" class="form-control" value="{{$item->translate($locale)->link}}" >
                                        </div>
                                        @endforeach

                                        <div class="form-group">
                                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                                            </button>
                                        </div>
                                    </form>
                                    <hr/>
                                    
                                    @elseif($item->type == "location")


                                    @endif
                                    @endforeach
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

<script>
    var selected = $('.type option:selected').val();
    get_field_by_select(selected)
    $('.type').on('change',function(){
        selected = $('.type option:selected').val();
        console.log(selected)
        get_field_by_select(selected)
    })

    function get_field_by_select(selected){
        if(selected == 'text'){
            $('.setting-text').show();
            $('.setting-image').hide();
            $('.setting-location').hide();
        }else if(selected == 'image')
        {
            $('.setting-text').hide();
            $('.setting-image').show();
            $('.setting-location').hide();
        }else{
            $('.setting-text').hide();
            $('.setting-image').hide();
            $('.setting-location').show();
        }
    }
    
</script>
<script>
    $("#pac-input").focusin(function() {
        $(this).val('');
    });
    $('#latitude').val('');
    $('#longitude').val('');
    // This example adds a search box to a map, using the Google Place Autocomplete
    // feature. People can enter geographical searches. The search box will return a
    // pick list containing a mix of places and predicted search terms.
    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">
    function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 24.740691, lng: 46.6528521 },
            zoom: 16,
            mapTypeId: 'roadmap'
        });
       
        // move pin and current location
        infoWindow = new google.maps.InfoWindow;
        geocoder = new google.maps.Geocoder();
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                map.setCenter(pos);
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(pos),
                    map: map,
                    title: 'موقعك الحالي'
                });
                markers.push(marker);
                marker.addListener('click', function() {
                    geocodeLatLng(geocoder, map, infoWindow,marker);
                });
                // to get current position address on load
                google.maps.event.trigger(marker, 'click');
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            console.log('dsdsdsdsddsd');
            handleLocationError(false, infoWindow, map.getCenter());
        }
        var geocoder = new google.maps.Geocoder();
        var marker;
        google.maps.event.addListener(map, 'click', function(event) {
            SelectedLatLng = event.latLng;
            console.log(SelectedLatLng);
            //added by me

            //map.setZoom(8);
            if(!marker || !marker.setPosition){
                deleteMarkers();

                marker = new google.maps.Marker({
                    position: SelectedLatLng,
                    map: map
                });
                $('#latitude').val(marker.position.lat());
                $('#longitude').val(marker.position.lng());
            }else{
                marker.setPosition(SelectedLatLng);
                $('#latitude').val(marker.position.lat());
                $('#longitude').val(marker.position.lng());
            }

            geocoder.geocode({
                'latLng': event.latLng
            }, function(results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        deleteMarkers();
                        addMarkerRunTime(event.latLng);
                        SelectedLocation = results[0].formatted_address;
                        console.log( results[0].formatted_address);
                        splitLatLng(String(event.latLng));
                        $("#pac-input").val(results[0].formatted_address);
                    }
                }
            });
        });
        function geocodeLatLng(geocoder, map, infowindow,markerCurrent) {
            var latlng = {lat: markerCurrent.position.lat(), lng: markerCurrent.position.lng()};
            /* $('#branch-latLng').val("("+markerCurrent.position.lat() +","+markerCurrent.position.lng()+")");*/
            $('#latitude').val(markerCurrent.position.lat());
            $('#longitude').val(markerCurrent.position.lng());
            geocoder.geocode({'location': latlng}, function(results, status) {
                if (status === 'OK') {
                    if (results[0]) {
                        map.setZoom(8);
                        var marker = new google.maps.Marker({
                            position: latlng,
                            map: map
                        });
                        markers.push(marker);
                        infowindow.setContent(results[0].formatted_address);
                        SelectedLocation = results[0].formatted_address;
                        $("#pac-input").val(results[0].formatted_address);
                        infowindow.open(map, marker);
                    } else {
                        window.alert('No results found');
                    }
                } else {
                    window.alert('Geocoder failed due to: ' + status);
                }
            });
            SelectedLatLng =(markerCurrent.position.lat(),markerCurrent.position.lng());
        }
        function addMarkerRunTime(location) {
            var marker = new google.maps.Marker({
                position: location,
                map: map
            });
            markers.push(marker);
        }
        function setMapOnAll(map) {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(map);
            }
        }
        function clearMarkers() {
            setMapOnAll(null);
        }
        function deleteMarkers() {
            clearMarkers();
            markers = [];
        }
        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        //$("#pac-input").val("أبحث هنا ");
        $("#pac-input").attr('placeholder', 'أبحث هنا');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_RIGHT].push(input);
        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
            searchBox.setBounds(map.getBounds());
        });
        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
            var places = searchBox.getPlaces();
            if (places.length == 0) {
                return;
            }
            // Clear out the old markers.
            markers.forEach(function(marker) {
                marker.setMap(null);
            });
            markers = [];
            // For each place, get the icon, name and location.
            var bounds = new google.maps.LatLngBounds();
            places.forEach(function(place) {
                if (!place.geometry) {
                    console.log("Returned place contains no geometry");
                    return;
                }
                var icon = {
                    url: place.icon,
                    size: new google.maps.Size(100, 100),
                    origin: new google.maps.Point(0, 0),
                    anchor: new google.maps.Point(17, 34),
                    scaledSize: new google.maps.Size(25, 25)
                };
                // Create a marker for each place.
                markers.push(new google.maps.Marker({
                    map: map,
                    icon: icon,
                    title: place.name,
                    position: place.geometry.location
                }));
                $('#latitude').val(place.geometry.location.lat());
                $('#longitude').val(place.geometry.location.lng());
                if (place.geometry.viewport) {
                    // Only geocodes have viewport.
                    bounds.union(place.geometry.viewport);
                } else {
                    bounds.extend(place.geometry.location);
                }
            });
            map.fitBounds(bounds);
        });
    }
    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
    }
    function splitLatLng(latLng){
        var newString = latLng.substring(0, latLng.length-1);
        var newString2 = newString.substring(1);
        var trainindIdArray = newString2.split(',');
        var lat = trainindIdArray[0];
        var Lng  = trainindIdArray[1];
        $("#latitude").val(lat);
        $("#longitude").val(Lng);
    }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjuzA2dGe0KgLeVzjTGh9W6bvixhrjsQs&libraries=places&callback=initAutocomplete&language=ar&region=EG
     async defer"></script>
@endpush 
