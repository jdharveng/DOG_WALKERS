import GMaps from 'gmaps/gmaps.js';

const initMap = function(mapElement, cards){
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
    const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
    const markers = JSON.parse(mapElement.dataset.markers);

    console.log("we are in the Principal method")

    const mapMarkers = [];
    markers.forEach((marker) => {
    const mapMarker = map.createMarker(marker);
    mapMarkers.push(mapMarker);
    map.addMarker(mapMarker);
    });


    if (markers.length === 0) {
      map.setZoom(2);
    } else if (markers.length === 1) {
      map.setCenter(markers[0].lat, markers[0].lng);
      map.setZoom(14);
    } else {
      map.fitLatLngBounds(markers);
    }


  // Interactive Cards
  cards.forEach((card, index) => {
    // Put a microphone on each card listenning for a hover event
    card.addEventListener('mouseenter', () => {
      console.log('We are in the EventListener')
      // Here we trigger the display of the corresponding marker infoWindow as it is the default behavior of a click on a  marker
      google.maps.event.trigger(mapMarkers[index], 'click');
    });
  });


    // Snazzy Maps
    const styles = [
        {
            "featureType": "all",
            "elementType": "all",
            "stylers": [
                {
                    "saturation": -100
                },
                {
                    "gamma": 0.5
                }
            ]
        }
    ];

    map.addStyle({
      styles: styles,
      mapTypeId: 'map_style'
    });
    map.setStyle('map_style');



  }
};

export default initMap;


