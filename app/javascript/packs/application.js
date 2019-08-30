import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

if (document.getElementById('calendar')) {
  calendarInit();
}

window.initSweetalert = initSweetalert;
