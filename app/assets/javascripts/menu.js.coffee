$(document).ready ->
  hideMenu = -> $('#header-bg').hide()

  # ad-hoc testing based on responsive design styles
  # TODO maybe use modernizr?
  onMobile = $('#logo a').css('display') != 'none'
  hideMenu() if onMobile
  $('#logo a').click((e) ->
    e.preventDefault()
    $('#header-bg').toggle() if onMobile
  )
