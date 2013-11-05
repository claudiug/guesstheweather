# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  Morris.Line
    element: 'demo'
    data: $('#demo').data('weather')
    xkey: 'time'
    ykeys: ['temperatureMax']
    labels: ['time at:']