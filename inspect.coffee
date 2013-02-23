csv = require 'csv'
fs = require 'fs'

file = process.argv[2]
csv()
  .from.stream(fs.createReadStream(__dirname + "/" + file), { columns: true })
  .on('record', (row, index) ->
    console.log row
    #console.log row[2]
    #console.log "https://maps.google.com/?q=#{ row.LATITUDE },#{ -row.LONGITUDE }"
    #console.log row.ON, row.OFF, row.LOAD
    # https://maps.google.com/?q=37.8412679,-122.1064858
  )
  #.to(console.log)
