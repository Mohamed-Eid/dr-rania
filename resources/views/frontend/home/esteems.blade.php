<div class="esteem">
    <div class="container">
        <h2> International Esteem </h2>

        <div class="row">
            @foreach ($esteems as $esteem)
            <div class="esteem-item col-lg-6">
                <div class="row">
                    <div class="esteem-img col-lg-4">
                        <img src="{{ $esteem->image_path }}"
                            class="img-thumbnail img-fluid">
                    </div>
                    <div class="esteem-info col-lg-8">
                        <h4 class="esteem-name"> {{$esteem->name}} </h4>
                        <h5 class="esteem-title"> {{$esteem->title}} </h5>
                        <div class="esteem-txt">
                            {{ $esteem->body }}
                        </div>
                        <span> {{ \Carbon\Carbon::createFromFormat('Y-m-d', $esteem->date)->format('j F, Y')}} </span>

                        <!-- BUTTON TRIGGER MODAL -->
                        <button type="button" class="btn btn-primary" data-toggle="modal"
                            data-target="#esteemPopup-{{ $esteem->id }}">
                            Read More
                        </button>

                        <!--  MODAL -->
                        <div class="modal fade" id="esteemPopup-{{ $esteem->id }}" tabindex="-1" aria-labelledby="esteemLabel"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-scrollable">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h3 class="modal-title">{{$esteem->title}}</h3>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        {{ $esteem->body }}
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            
            @endforeach

            <div class="esteem-view-more col-12 text-center">
                <a href="{{ route('frontend.esteems.index') }}" class="btn btn-primary"> View More Letters </a>
            </div>

        </div>

    </div>
</div>