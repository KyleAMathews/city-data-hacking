// Generated by CoffeeScript 1.4.0
(function() {

  $.getJSON('/passenger-data', function(data) {
    var datum, url, _i, _len, _results;
    console.log(data);
    $('body').empty();
    _results = [];
    for (_i = 0, _len = data.length; _i < _len; _i++) {
      datum = data[_i];
      url = "https://maps.google.com/?q=" + datum.LATITUDE + "," + (-datum.LONGITUDE);
      _results.push($('body').append("<a target='_blank' href='" + url + "'>" + url + "</a><br>"));
    }
    return _results;
  });

}).call(this);
