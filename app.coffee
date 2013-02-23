express = require('express')
routes = require('./routes')
user = require('./routes/user')
passengerData = require './routes/passenger-data'
http = require('http')
path = require('path')
csv = require 'csv'
fs = require 'csv'

app = express()

app.configure ->
  app.set('port', process.env.PORT || 3000)
  app.set('views', __dirname + '/views')
  app.set('view engine', 'jade')
  app.use(express.favicon())
  app.use(express.logger('dev'))
  app.use(express.bodyParser())
  app.use(express.methodOverride())
  app.use(app.router)
  app.use(express.static(path.join(__dirname, 'public')))

app.configure 'development', ->
  app.use express.errorHandler()

app.get('/', routes.index)
app.get('/passenger-data', passengerData.get)

http.createServer(app).listen app.get('port'), ->
  console.log("Express server listening on port " + app.get('port'))
