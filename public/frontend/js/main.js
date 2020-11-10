$(document).ready(function(){
  
  // SIDE NAVIGATION TOGGEL BUTTON
  $(".show-button").click(function(){
    $("#side-bar").css({ "display" : "block" });
  });

  $(".hide-button").click(function(){
    $("#side-bar").css({ "display" : "none" });
  });

  // SMOOTH SCROLL
  $(".navbar .collapse .navbar-nav a").click(function(){
    $("html, body").animate({
      scrollTop: $( "#"+$(this).data("value") ).offset().top,
    }, 1000);
  });

  // START NICE SCROLL
  $("body").niceScroll({
    cursorcolor:"#0278ae",
    cursorwidth:"5px",
    cursorborder: 0,
    cursorborderradius: 0,
    scrollspeed: 60,
    autohidemode: false,
  });

  // START OWL CAROUSEL
  
  // AWARDS SECTION CAROUSEL
  $("#home-awards").owlCarousel({
    loop:true,
    autoplay:true,
    autoplaySpeed: 1000,
    dotsSpeed: 1000,
    nav:true,
    margin:10,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:4,
            nav:false
        },
        1000:{
            items:4,
            nav:true,
            loop:false
        }
    }
  });


  // PELVIC FLOOR IN CAIRO UNIVERSITY PUBLICATIONS SECTION SLIDER
  $("#pelvic-cairo-publications-slider").owlCarousel({
    autoplay:true,
    autoplaySpeed: 1000,
    dotsSpeed: 1000,
    loop:true,
    margin:15,
    dots:true,
    nav:false,
    rtl: false,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:false
        },
        600:{
            items:1,
            nav:false
        },
        1000:{
          items:3,
          nav:false
      }
    }
  });

  // CASE AOUTHER SECTION SLIDER 
  $('#case-author-slider').owlCarousel({
    items:1,
    autoplay: true,
    autoplaySpeed: 1000,
    dotsSpeed: 1000,
    loop:true,
    margin:15,
    dots:true,
    nav:false,
  });

  // TEACHING SECTION SLIDER 
  $("#teaching-slider").owlCarousel({
    items:1,
    autoplay:true,
    autoplaySpeed: 1000,
    dotsSpeed: 1000,
    loop:true,
    margin:20,
    dots:true,
    nav:false
  });

  // CONGRESS SECTION SLIDER 
  $("#congress-slider").owlCarousel({
    items:1,
    autoplay:true,
    autoplaySpeed: 1000,
    dotsSpeed: 1000,
    loop:true,
    margin:15,
    dots:true,
    nav:false
  });

  

    // PELVIC FLOOR IN CAIRO UNIVERSITY AWARDS SECTION SLIDER
    $("#pelvic-cairo-workshop-slider").owlCarousel({
      items:1,
      autoplay:true,
      autoplaySpeed: 1000,
      dotsSpeed: 1000,
      loop:true,
      margin:15,
      dots:true,
      nav:false,
    });

    // PELVIC FLOOR IN CAIRO UNIVERSITY VIDEOS SECTION SLIDER
    $("#pelvic-cairo-videos-slider").owlCarousel({
      autoplay:true,
      autoplaySpeed: 1000,
      dotsSpeed: 1000,
      loop:true,
      margin:15,
      dots:true,
      nav:false,
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:false
          },
          600:{
              items:1,
              nav:false
          },
          1000:{
            items:3,
            nav:false
        }
      }
    });

    // PELVIC FLOOR IN CAIRO UNIVERSITY VIDEOS SECTION SLIDER
    $("#pelvic-cairo-imgs-slider").owlCarousel({
      autoplay:true,
      autoplaySpeed: 1000,
      dotsSpeed: 1000,
      loop:true,
      margin:15,
      dots:true,
      nav:true,
      responsiveClass:true,
      responsive:{
          0:{
              items:1,
              nav:false
          },
          600:{
              items:1,
              nav:false
          },
          1000:{
            items:4,
            nav:true
        }
      }
    });

  // CUSTOMIZE PELVIC OF EXCELLENCE SLIDER
  $("#pelvicSliderControls .carousel-inner , #pelvicSliderControls .carousel-inner img").height( $(window).height() - $("nav").innerHeight() );
  $(window).resize(function() {
    $("#pelvicSliderControls .carousel-inner , #pelvicSliderControls .carousel-inner img").height( $(window).height() - $("nav").innerHeight() );
  });

});