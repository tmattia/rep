$(document).ready ->
  clientSideValidations.callbacks.form.fail = (form, eventData) ->
    newFlash = $('
      <div class="container">
        <div class="sixteen columns alpha omega">
          <div id="flash" class="error">
            ' + I18n.t('label.please_check_fields') + '
          </div>
        </div>
      </div>
    ')
    $('#flash').remove()
    $('#content-bg').before(newFlash)
    $.scrollTo(newFlash)
