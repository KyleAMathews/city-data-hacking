$.getJSON('/passenger-data', (data) ->
  console.log data
  $('body').empty()
  for datum in data
    url = "https://maps.google.com/?q=#{ datum.LATITUDE },#{ -datum.LONGITUDE }"
    $('body').append "<a target='_blank' href='#{ url }'>#{ url }</a><br>"
)
