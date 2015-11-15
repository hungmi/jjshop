# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # $("#house-profile").on("ajax:send", (xhr) ->
  #   $(".ajax-text").text "Saving..."
  # ).on("ajax:error", (e, xhr, status, error) ->
  #   $(".ajax-text").text $.parseJSON(xhr.responseText).error
  #   console.log $.parseJSON(xhr.responseText).error
  # ).on("ajax:success", (e, data, status, xhr) ->
  #   $(".ajax-text").text "Complete."
  # )
  $('#new-product-btn').click (e)->
    e.preventDefault()
    $.ajax(
      method: 'POST'
      url: '/admin/products'
      dataType:'html'
      data:
        product:
          page_id: 2
          title: 'product4'
          description: 'fjiwjfeosd;fwf'
          quantity: 3
          price: 999).done (msg) ->
      # alert 'Data Saved: ' + msg
      # return
      console.log msg
      $('#product-list').append(msg)



