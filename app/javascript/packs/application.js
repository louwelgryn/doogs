import "bootstrap";
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { submitForm } from '../components/submitForm';

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

calendarInit();

// SWEET ALERT //
import { initSweetalert } from '../components/init_sweetalert';
window.initSweetalert = initSweetalert;



if (document.querySelector('.filter-search')) {
  submitForm();
}


