import "bootstrap";
import initMap from '../components/map';
import initMapShow from '../components/mapshow';


const indexPage = document.querySelector('.dogs.index');
if (indexPage) {
  const mapElement = document.getElementById('map');
  const cards = document.querySelectorAll('.card');
  initMap(mapElement, cards);
}


const showPage = document.querySelector('.dogs.show');
if (showPage) {
  const mapElement = document.getElementById('map-show');
  initMapShow(mapElement);
}
