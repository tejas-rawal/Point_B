(function () {
  var mapOptions = {
    center: new google.maps.LatLng(51.4781, 0.0000),
    zoom: 0,
    mapTypeId: google.maps.MapTypeId.SATELLITE
  };

  var map = new google.maps.MAP(document.getElementbyId("map-canvas"), mapOptions);

})();