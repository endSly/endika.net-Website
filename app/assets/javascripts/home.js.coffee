# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$('#articles').masonry
  itemSelector: '.item'

window.onload = ->
  sel = document.getElementById('about')
  window.onscroll = ->
    posY = document.documentElement.scrollTop || window.pageYOffset
    sel.style.backgroundPosition = "50% #{ -posY / 4 }px"

$ ->
  skrollr.init
    smoothScrolling: true
    forceHeight: false

  $("a.page-marker[href*=#]").click ->
    link = $(this).attr("href")
    ga('send', 'menu-action', link)
    scroll = $(link).offset().top
    $("html, body").animate(scrollTop: scroll, 800, "easeInOutExpo")
    false

