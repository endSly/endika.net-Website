# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('#articles').masonry
  itemSelector: '.item'


$ ->
  skrollr.init smoothScrolling: true

  $("a.page-marker[href*=#]").click ->
    link = $(this).attr("href")
    scroll = $(link).offset().top
    $("html, body").animate(scrollTop: scroll, 800, "easeInOutExpo")
    false

