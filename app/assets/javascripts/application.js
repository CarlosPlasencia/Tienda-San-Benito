// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

$(document).ready(function(){
     
    $('.parallax').parallax();
    $('.button-collapse').sideNav();
    $('.slider').slider({Interval: 4000, Transition: 300, width: 200});
    $('.modal-trigger').leanModal();
    $('.dropdown-button').dropdown({ hover: true }); 
   
});



$(document).scroll(function(){
         
    if($(window).scrollTop()>100)
    {
        $("#nav2").css('top', "0px"); 
        $("#nav2").css('position', "fixed"); 
        $("#nav2").addClass("navbar-fixed nav-top"); 
    }
    else
    {
        $("#nav2").css('top', "auto"); 
        $("#nav2").css('position', "relative"); 
        $("#nav2").removeClass("navbar-fixed nav-top");   
    }
});