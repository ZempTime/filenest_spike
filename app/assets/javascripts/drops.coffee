ready = ->
  $(document).on 'click', ->
    if $("input:checkbox:checked").size() > 0
      $("#next-steps-content").fadeIn(500)
    else
      $("#next-steps-content").fadeOut(500)

$(document).ready ready
$(document).on 'page:load', ready
