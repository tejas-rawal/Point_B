// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require riot
//= require_tree ./app/models
//= require_tree ./app/presenters

$(function(){
  $(document).foundation();
  $(".static-landing .top-bar").remove();

  $('dd.accordion').on('click', function(){
    $('form.new-post').slideToggle("slow");
  });

  $('.fa.fa-star-o').on('click', function(e){
    e.preventDefault();
    $('i').removeClass('fa fa-star-o').addClass('fa fa-star');
    $.ajax({
      url: "user_new_star_path",
      type: "post",
      dataType: "json"
    });
  });
});







