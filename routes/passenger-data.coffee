mongoose = require 'mongoose'
require './../data_schemas'

PassengerCount = mongoose.model 'passenger_count'

exports.get = (req, res) ->
  PassengerCount.find()
    .limit(100)
    .exec (err, rows) ->
      res.json rows
