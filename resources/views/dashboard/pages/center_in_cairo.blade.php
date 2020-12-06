@extends('layouts.dashboard.app')

@section('content')

<div class="content-wrapper">

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.add')</h3>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-12">
                          <div class="nav-tabs-custom">
                            <ul class="nav nav-tabs">
                                @php
                                    $titles = ['Header', 'Awards', 'Publications', 'Workshop' , 'Videos' , 'Photo Album']
                                @endphp

                                @for ($i = 1; $i <= 6; $i++)
                                <li class="{{ $i==1 ? 'active' : '' }}"><a href="#tab_{{$i}}" data-toggle="tab">{{$titles[$i-1]}}</a></li>               
                                @endfor         
                                
                            </ul>

                            <div class="tab-content">
                                @for ($i = 1; $i <= 6; $i++)
                                <div class="tab-pane {{ $i==1 ? 'active' : '' }}" id="tab_{{$i}}">
                                    @if ($i == 1)
                                    @include('dashboard.pages.headers.cairo_center')
                                    @elseif($i == 2)
                                    @include('dashboard.pages.awards.index')
                                    @elseif($i == 3)
                                    @include('dashboard.pages.publications.index')
                                    @elseif($i == 4)
                                    @include('dashboard.pages.workshops.index')
                                    @elseif($i == 5)
                                    @include('dashboard.pages.videos.index')
                                    @elseif($i == 6)
                                    @include('dashboard.pages.photos.index')

                                    @endif
                                </div>
    
                                  <!-- /.tab-pane -->
    
                                  @endfor         
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



@push('styles')
<style>
    input[type="file"] {
  display: block;
}
.imageThumb {
  max-height: 75px;
  border: 2px solid;
  padding: 1px;
  cursor: pointer;
}
.pip {
  display: inline-block;
  margin: 10px 10px 0 0;
}
.remove {
  display: block;
  background: #444;
  border: 1px solid black;
  color: white;
  text-align: center;
  cursor: pointer;
}
.remove:hover {
  background: white;
  color: black;
}
</style>
@endpush

@push('scripts')

<script>
    $(document).ready(function() {
  if (window.File && window.FileList && window.FileReader) {
    $("#files").on("change", function(e) {
      var files = e.target.files,
        filesLength = files.length;
      for (var i = 0; i < filesLength; i++) {
        var f = files[i]
        var fileReader = new FileReader();
        fileReader.onload = (function(e) {
          var file = e.target;
          $("<span class=\"pip\">" +
            "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>" +
            "<br/><span class=\"remove\">Remove image</span>" +
            "</span>").insertAfter("#files");
          $(".remove").click(function(){
            $(this).parent(".pip").remove();
          });
          
          // Old code here
          /*$("<img></img>", {
            class: "imageThumb",
            src: e.target.result,
            title: file.name + " | Click to remove"
          }).insertAfter("#files").click(function(){$(this).remove();});*/
          
        });
        fileReader.readAsDataURL(f);
      }
      console.log(files);
    });
  } else {
    alert("Your browser doesn't support to File API")
  }
});
</script>

@endpush