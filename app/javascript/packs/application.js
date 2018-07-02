import "bootstrap";
import initMap from '../components/map';

const indexPage = document.querySelector('.dogs.index');
if (indexPage) {
  const mapElement = document.getElementById('map');
  const cards = document.querySelectorAll('.card');
  initMap(mapElement, cards);
}
