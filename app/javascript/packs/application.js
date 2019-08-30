import "bootstrap";
import calendarInit from '../components/fullcalendar.js';
import { initUpdateNavbarOnScroll } from '../components/navbar';

if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

calendarInit();

// SWEET ALERT //
import { initSweetalert } from '../components/init_sweetalert';
window.initSweetalert = initSweetalert;






// PROGRESS BAR

