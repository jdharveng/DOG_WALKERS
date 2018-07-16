import "bootstrap";
import './application.css';
import initMap from '../components/map';
import initMapShow from '../components/mapshow';
import initDate from '../components/datepickr';
import submitMessage from '../components/message-form.js';
import sendButton from '../components/message-form.js';
//import '../components/messages.js.erb';
import '../components/messages.js';

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

  const startDateinput = document.getElementById('walk_date_begin');
  const endDateinput = document.getElementById('walk_date_end');
  initDate(startDateinput, endDateinput);
}


const showChats = document.querySelector('.chats.show');
if(showChats) {
  const form = document.getElementById('new_message');
  sendButton(form);
}








