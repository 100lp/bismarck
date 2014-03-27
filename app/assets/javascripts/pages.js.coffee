# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#tabs").tabs()
  return

$ ->
  document.getElementById("links").onclick = (event) ->
    controlsClass: 'blueimp-gallery-controls'
    toggleControlsOnReturn: false
    event = event or window.event
    target = event.target or event.srcElement
    link = (if target.src then target.parentNode else target)
    options =
      index: link
      event: event

    links = @getElementsByTagName("a")
    blueimp.Gallery links, options
    return
