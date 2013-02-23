csv = require 'csv'
fs = require 'fs'

exports.index = (req, res) ->
  res.render('index', { title: 'blue-moon' })
