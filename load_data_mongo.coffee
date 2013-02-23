csv = require 'csv'
fs = require 'fs'
mongoose = require 'mongoose'
require './data_schemas'

PassengerCount = mongoose.model 'passenger_count'
csv()
  .from.stream(fs.createReadStream(__dirname + "/" + "Urban-Data-Challenge/public-transportation/san-francisco/passenger-count.csv"), { columns: true })
  .on('record', (row, index) ->
    if index % 100 is 0
      console.log index
    passengerCount = new PassengerCount()
    for k,v of row
      passengerCount[k] = v
    passengerCount.save()
  )
