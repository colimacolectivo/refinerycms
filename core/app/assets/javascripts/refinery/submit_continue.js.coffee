@init_submit_continue = ->
  $("#submit_continue_button").click submit_and_continue
  $("form").change (e) ->
    $(this).attr "data-changes-made", true
  
  if (continue_editing_button = $("#continue_editing")).length > 0 and continue_editing_button.attr("rel") != "no-prompt"
    $("#editor_switch a").click (e) ->
      e.preventDefault()  unless confirm(I18n.t("js.admin.confirm_changes"))  if $("form[data-changes-made]").length > 0
