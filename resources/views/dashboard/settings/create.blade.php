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
                    <form action="{{ route('dashboard.settings.store') }}" method="post" enctype="multipart/form-data">

                        @csrf

                        <div class="form-group">
                            <label>@lang('site.type')</label>
                            <select name="type" class="form-control type">
                                <option value="text">text</option>
                                <option value="image">image</option>
                                <option value="location" selected>location</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.key')</label>
                            <input type="text" name="key" class="form-control" value="{{ old('key') }}" >
                        </div>

                        <div class="form-group">
                            <label>@lang('site.class')</label>
                            <input type="text" name="class" class="form-control" value="{{ old('class') }}" >
                        </div>

                        @foreach(config('translatable.locales') as $locale)
                        <div class="form-group">
                            <label>@lang('site.'.$locale.'.name')</label>
                            <input type="text" name="{{$locale}}[name]" class="form-control" value="{{ old($locale.'.name') }}" >
                        </div>
                        @endforeach

                        @foreach(config('translatable.locales') as $locale)
                        <div class="form-group setting-text">
                            <label>@lang('site.'.$locale.'.value')</label>
                            <input type="text" name="{{$locale}}[value]" class="form-control" value="{{ old($locale.'.value') }}" >
                        </div>
                        @endforeach

                        <div class="form-group setting-image">
                            <label>@lang('site.image')</label>
                            <input type="file" name="value" class="form-control image" value="{{ old('value') }}" >
                            <div class="form-group">
                                <img src=""
                                     class="img-thumbnail image-preview" style="width: 100px;">
                            </div>
                        </div>


                        <div class="form-group setting-location">
                            <label>@lang('site.location')</label>
                            {{-- <input type="text" name="value" class="form-control" value="{{ old('value') }}" > --}}
                            <div class="map">
                                <div class="form-group">
                                    {{-- <label>@lang('site.address')</label> --}}
                                    <input type="text" id="pac-input" class="form-control" placeholder="" name="address" value="{{ old('address') }}" >
                                    <input type="hidden" id="latitude" name="lat" class="form-control" value="{{ old('lat') }}" required>
                                    <input type="hidden" id="longitude" name="lng" class="form-control" value="{{ old('lng') }}" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div id="map" style="height: 300px;width: 100%;"></div>
                            </div>
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
                            </button>
                        </div>


                    </form>
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
