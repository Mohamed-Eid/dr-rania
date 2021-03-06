<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- SET SITE ICON -->
    <link rel="shortcut icon" href="{{asset('frontend/images/icons/site-icon.png')}}">
    <!-- SITE FONT -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Titillium+Web&display=swap">
    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="{{ asset('frontend/css/all.min.css') }}">
    <!-- WOW JS -->
    <link rel="stylesheet" href="{{ asset('frontend/css/animate.css') }}">
    <!-- BOOTSTRAP -->
    <link rel="stylesheet" href="{{ asset('frontend/css/bootstrap.min.css') }}">
    <!-- OWL CAROUSEL -->
    <link rel="stylesheet" href="{{ asset('frontend/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('frontend/css/owl.theme.default.min.css') }}">
    <!-- BX SLIDER -->
    <link rel="stylesheet" href="{{ asset('frontend/css/jquery.bxslider.min.css') }}">
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="{{ asset('frontend/css/style.css') }}">
    <title>Dr.Rania</title>
</head>

<body>
    <!-- START SIDE NAVIGATION -->
    <div id="side-bar">
        <div class="navbar-nav side-nav ml-auto ">
            <div class="hide-button">
                <i class="fas fa-times "></i>
            </div>
            <a class="nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a>

            

            <div class="accordion" id="accordionExample">
                <div class="card" style="border:none">
                    <div class="" id="headingOne">
                        <a class="btn btn-link btn-block text-left nav-link" data-toggle="collapse"
                            data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> CV Overview <i
                                class="fas fa-chevron-down"></i> </a>
                    </div>

                    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">

                        <div class="card-body">

                            <a class="dropdown-item nav-link" href="basic-info.php"> Dr.Rania</a>
                            <a class="dropdown-item nav-link" href="international-esteem.php">International Esteem</a>
                            <a class="dropdown-item nav-link" href="supervise-thesis.php">Supervise Thesis</a>
                            <a class="dropdown-item nav-link" href="certification.php">Certifications</a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion" id="accordionExample2">
                <div class="card" style="border:none">
                    <div class="" id="headingOne">
                        <a class="btn btn-link btn-block text-left nav-link" data-toggle="collapse"
                            data-target="#collapse2" aria-expanded="true" aria-controls="collapseOne"> Publications <i
                                class="fas fa-chevron-down"></i> </a>
                    </div>

                    <div id="collapse2" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample2">

                        <div class="card-body">
                            <a class="dropdown-item" href="original-research.php"> Original Research </a>
                            <a class="dropdown-item" href="review-articles.php">Review Articles </a>
                            <a class="dropdown-item" href="book-chapter.php">Book Chapter</a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="accordion" id="accordionExample3">
                <div class="card" style="border:none">
                    <div class="" id="headingOne">
                        <a class="btn btn-link btn-block text-left nav-link" data-toggle="collapse"
                            data-target="#collapse3" aria-expanded="true" aria-controls="collapseOne"> Teaching <i
                                class="fas fa-chevron-down"></i> </a>
                    </div>

                    <div id="collapse3" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample3">

                        <div class="card-body">
                            <a class="dropdown-item" href="training-workshop.php"> Training Workshops </a>
                            <a class="dropdown-item" href="video-lectures.php"> Video Lectures </a>
                        </div>
                    </div>
                </div>
            </div>

            <a class="nav-link" data-value="cong" href="congress.php">Congress</a>
            <a class="nav-link" href="pelvic-excellence.php">Pelvic Floor Center Of Excellence</a>
            <a class="nav-link" href="pelvic-cairo.php">Pelvic Floor Center In Cairo University</a>
            <a class="nav-link" href="contact.php">Contact Dr.Rania</a>
        </div>
    </div>
    <!-- END SIDE NAVIGATION -->

    <!-- START NAVIGATION BAR -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">

        <div class="show-button">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <div class="container-fluid">
            <a class="navbar-brand" href="{{ route('frontend.index') }}"> <span> Dr. </span> Rania </a>
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse " id="navbarNavAltMarkup">
                <div class="navbar-nav main-nav ml-auto">
                    <a class="nav-link {{ is_current_route('frontend.index') ? 'active' : ''  }}" href="{{ route('frontend.index') }}">Home <span class="sr-only">(current)</span></a>

                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle cv-link" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            CV Overview
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item cv-item {{ is_current_route('frontend.pages.basic_info') ? 'is_active' : ''  }}" href="{{ route('frontend.pages.basic_info') }}"> Dr.Rania</a>
                            <a class="dropdown-item cv-item {{ is_current_route('frontend.esteems.index') ? 'is_active' : ''  }}" href="{{ route('frontend.esteems.index') }}">International Esteem</a>
                            <a class="dropdown-item cv-item {{ is_current_route('frontend.thesis.index') ? 'is_active' : ''  }}" href="{{ route('frontend.thesis.index') }}">Supervise Thesis</a>
                            <a class="dropdown-item cv-item {{ is_current_route('frontend.certifications.index') ? 'is_active' : ''  }}" href="{{ route('frontend.certifications.index') }}">Certifications</a>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle pub-link " href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Publications
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item pub-item {{ is_current_route('frontend.publications.researches.index') ? 'is_active' : ''  }}" href="{{ route('frontend.publications.researches.index') }}"> Original Research </a>
                            <a class="dropdown-item pub-item {{ is_current_route('frontend.publications.articles.index') ? 'is_active' : ''  }}" href="{{ route('frontend.publications.articles.index') }}">Review Articles </a>
                            <a class="dropdown-item pub-item {{ is_current_route('frontend.publications.books.index') ? 'is_active' : ''  }}" href="{{ route('frontend.publications.books.index') }}">Book Chapter</a>
                        </div>
                    </div>

                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle tech-link" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Teaching
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item tech-item {{ is_current_route('frontend.teaching.workshops.index') ? 'is_active' : ''  }}" href="{{ route('frontend.teaching.workshops.index') }}"> Training Workshops </a>
                            <a class="dropdown-item tech-item {{ is_current_route('frontend.teaching.lectures.index') ? 'is_active' : ''  }}" href="{{ route('frontend.teaching.lectures.index') }}"> Video Lectures </a>
                        </div>
                    </div> 

                    <a class="nav-link  {{ is_current_route('frontend.congress.index') ? 'active' : ''  }}" href="{{ route('frontend.congress.index') }}">Congress</a>
                    <a class="nav-link  {{ is_current_route('frontend.pages.center_of_excellence') ? 'active' : ''  }}" href="{{ route('frontend.pages.center_of_excellence') }}">Pelvic Floor Center Of Excellence</a>
                    <a class="nav-link  {{ is_current_route('frontend.pages.center_of_cairo') ? 'active' : ''  }}" href="{{ route('frontend.pages.center_of_cairo') }}">Pelvic Floor Center In Cairo University</a>
                    <a class="nav-link  {{ is_current_route('frontend.pages.contact_us') ? 'active' : ''  }}" href="{{ route('frontend.pages.contact_us') }}">Contact Dr.Rania</a>
                </div>
            </div>
        </div>
    </nav>
    <!-- END NAVIGATION BAR -->

    @push('scripts')
        <script>
            $(document).ready(function(){
                if ($('.cv-item').hasClass('is_active')) {
                    $('.cv-link').addClass('active');
                }

                if ($('.pub-item').hasClass('is_active')) {
                    $('.pub-link').addClass('active');
                }

                if ($('.tech-item').hasClass('is_active')) {
                    $('.tech-link').addClass('active');
                }
            });

        </script>
    @endpush