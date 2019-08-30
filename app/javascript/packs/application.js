import "bootstrap";

import { initUpdateNavbarOnScroll } from '../components/navbar';
if (document.querySelector(".home-page")) {
  initUpdateNavbarOnScroll();
}


// SWEET ALERT //
import { initSweetalert } from '../components/init_sweetalert';
window.initSweetalert = initSweetalert;






// PROGRESS BAR

