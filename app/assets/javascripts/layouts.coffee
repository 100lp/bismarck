$ ->
  jQuery.fn.topLink = (settings) ->
    settings = jQuery.extend(
      min: 1
      fadeSpeed: 200
      ieOffset: 50
    , settings)

  #smoothscroll
  $("#top-link").click (e) ->
    e.preventDefault()
    $.scrollTo 0, 300
    return

  return
