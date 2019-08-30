import "bootstrap";
import { initSweetalert } from '../components/init_sweetalert';
import { initUpdateNavbarOnScroll } from '../components/navbar';
if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}

// SWEET ALERT //
window.initSweetalert = initSweetalert;
// initSweetalert();





// PROGRESS BAR

