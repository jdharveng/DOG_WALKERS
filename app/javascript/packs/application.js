import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initMapShow from '../components/mapshow';
import initDate from '../components/datepickr'


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

  // const startDateinput = document.getElementById('walk_date_begin');
  // const endDateinput = document.getElementById('walk_date_end');
  // initDate(startDateinput, endDateinput);
}

if (showPage) {
  const startDateinput = flatpickr("#walk_date_begin", { minDate: new Date() });
  const endDateinput = flatpickr("#walk_date_end", { minDate: new Date() });
  dogDate(startDateinput, endDateinput);
}







