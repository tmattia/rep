$(document).ready ->
  $('input[id*=cnpj]').mask('99.999.999/9999-99')
  $('input[id*=phone], input[id*=fax]').mask('(99) 9999 9999')
  $('input[id*=zip_code]').mask('99.999-999')
  $('input[id*=unit_price]').maskMoney(thousands: '')
