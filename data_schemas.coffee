mongoose = require('mongoose')
mongoose.connect('mongodb://localhost/transportation_data')
require('mongoose-double')(mongoose)

# Setup MongoDB schemas.
Schema = mongoose.Schema

SchemaTypes = mongoose.Schema.Types
# STOP_SEQ,STOP_ID,STOP_NAME,ON,OFF,LOAD,MO,DAY,YR,ROUTE,LATITUDE,LONGITUDE,TRIP_ID,DIR,VEHNO,TIMESTOP,TIMEDOORCLOSE,TIMEPULLOUT,TRIPCODE,TRIPSTOP,DOORDWELL,WAITDWELL
PassengerCountSchema = new Schema (
  STOP_SEQ: Number
  STOP_ID: Number
  STOP_NAME: String
  ON: Number
  OFF: Number
  LOAD: Number
  MO: Number
  DAY: Number
  YR: Number
  ROUTE: Number
  LATITUDE: { type: SchemaTypes.Double, default: null }
  LONGITUDE: { type: SchemaTypes.Double, default: null }
  TRIP_ID: Number
  DIR: Number
  VEHNO: Number
  TIMESTOP: String
  TIMEDOORCLOOSE: String
  TIMEPULLOUT: String
  TRIPCODE: String
  TRIPSTOP: String
  DORDWELL: String
  WAITDWELL: String
)

PassengerCount = mongoose.model 'passenger_count', PassengerCountSchema
