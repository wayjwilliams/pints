//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap
//= require jquery.turbolinks
//= require turbolinks
//= require masonry/jquery.masonry
//= require masonry/modernizr-transitions
//= require_tree .

$(function(){
  $('#pints').masonry({
    itemSelector: '.box',
    columnWidth: 200,
    isAnimated: !Modernizr.csstransitions,
    isFitWidth: true
  });

});
