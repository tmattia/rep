$(document).ready ->
  $('a.external').click((e) ->
    e.preventDefault()
    window.open $(this).attr('href')
  )
